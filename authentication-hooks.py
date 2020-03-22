import logging
import requests
import re
import json
import HTMLParser

keycloakUrl='https://localhost/auth/realms/jdbcExam/protocol/openid-connect/';
clientId ='ui';
user='user';
password='test';

def getCode():
    #Get login page and form action
    loginUrl = keycloakUrl + "auth?client_id=" + clientId + "&redirect_uri=https%3A%2F%2Flocalhost%2F&response_type=code";
    loginPage = requests.get(loginUrl, verify = False);
    action = re.search('action="([^"]*)"', loginPage.content.decode()).group(1);
    action = HTMLParser.HTMLParser().unescape(action)
    #Enter username and password to get the code
    data = {"username": user, "password": password};
    codeRedirect = requests.post(action, data= data, verify = False, cookies=loginPage.cookies, allow_redirects=False);
    code = re.search('code=(.*)$', codeRedirect.headers['Location']).group(1);
    return code;

def getAccessToken(code):
    tokenUrl = keycloakUrl + 'token';
    data = {"grant_type":"authorization_code", "code": code, "redirect_uri": "https://localhost/", "client_id": clientId};
    accessTokenPage = requests.post(tokenUrl, data= data, verify = False, allow_redirects=False);
    return (json.loads(accessTokenPage.content))['access_token'];

def zap_started(zap, target):
    accessToken = getAccessToken(getCode());

    proxyScriptName = 'add_header.js'
    zap.script.load(scriptname=proxyScriptName,
        scripttype='httpsender',
        scriptengine='Oracle Nashorn',
        filename='/zap/wrk/add_header.js',
        scriptdescription="desc");
    print('Enable script ' + proxyScriptName + ' -> ' +
            zap.script.enable(scriptname=proxyScriptName));
    print('Set script value ' + accessToken + ' in ' + proxyScriptName + ' -> ' +
            zap.script.set_script_var(scriptname=proxyScriptName, varkey="authHeader", varvalue=accessToken));
    print('Set gloabl value ' + accessToken + ' -> ' +
            zap.script.set_global_var(varkey="authHeader", varvalue=accessToken));
    return zap, target;
