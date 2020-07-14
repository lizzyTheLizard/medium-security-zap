import logging
import requests
import re
import json

keycloakUrl='http://localhost:9080/auth/realms/exam/protocol/openid-connect/';
clientId ='ui';
user='user';
password='test';

def zap_started(zap, target):
    logging.debug('Try to get access token')

    # Make Oauth code request
    loginUrl = keycloakUrl + "auth?client_id=" + clientId + "&redirect_uri=https%3A%2F%2Flocalhost%2F&response_type=code"
    loginPage = requests.get(loginUrl, verify = False)

    
    # We got the login page, let's fill out the form, This might be nicer with a HTML-Parser, but it works like this
    action = re.search('action="([^"]*)"', loginPage.content.decode()).group(1)
    action = action.replace('&amp;','&');
    data = {"username": user, "password": password}
    codeRedirect = requests.post(action, data= data, verify = False, cookies=loginPage.cookies, allow_redirects=False)

    # We got an OWuaht code redirect, let's take out the code
    code = re.search('code=(.*)$', codeRedirect.headers['Location']).group(1)
    tokenUrl = keycloakUrl + 'token'
    data = {"grant_type":"authorization_code", "code": code, "redirect_uri": "https://localhost/", "client_id": clientId};
    accessTokenPage = requests.post(tokenUrl, data= data, verify = False, allow_redirects=False);

    # On the response there is an access token, let's find it
    accessToken = (json.loads(accessTokenPage.content))['access_token']

    # Put the access token to every ZAP request
    zap.script.set_global_var(varkey="authHeader", varvalue=accessToken)
    proxyScriptName = 'add_header.js'
    zap.script.load(scriptname=proxyScriptName,
        scripttype='httpsender',
        scriptengine='Oracle Nashorn',
        filename='/zap/wrk/add_header.js',
        scriptdescription="desc")
    logging.info('Authentication finished use token ' + accessToken)
    return zap, target;

def zap_pre_shutdown(zap):
    with open('/zap/wrk/output/urls.txt', mode='wb' ) as f:
        for url in zap.core.urls():
            f.write(str(url) + '\n');

