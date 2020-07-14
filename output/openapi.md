
# ZAP Scanning Report




## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 0 |
| Low | 1 |
| Informational | 2 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| Cookie Without SameSite Attribute | Low | 3 | 
| A Client Error response code was returned by the server | Informational | 7 | 
| Loosely Scoped Cookie | Informational | 3 | 

## Alert Detail


  
  
  
### Cookie Without SameSite Attribute
##### Low (Medium)
  
  
  
  
#### Description
<p>A cookie has been set without the SameSite attribute, which means that the cookie can be sent as a result of a 'cross-site' request. The SameSite attribute is an effective counter measure to cross-site request forgery, cross-site script inclusion, and timing attacks.</p>
  
  
  
* URL: [http://localhost:8080/api/exams/examId/solution](http://localhost:8080/api/exams/examId/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `JSESSIONID`
  
  
  * Evidence: `Set-Cookie: JSESSIONID`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `DELETE`
  
  
  * Parameter: `JSESSIONID`
  
  
  * Evidence: `Set-Cookie: JSESSIONID`
  
  
  
  
* URL: [http://localhost:8080/api/exams](http://localhost:8080/api/exams)
  
  
  * Method: `POST`
  
  
  * Parameter: `JSESSIONID`
  
  
  * Evidence: `Set-Cookie: JSESSIONID`
  
  
  
  
Instances: 3
  
### Solution
<p>Ensure that the SameSite attribute is set to either 'lax' or ideally 'strict' for all cookies.</p>
  
### Reference
* https://tools.ietf.org/html/draft-ietf-httpbis-cookie-same-site

  
#### CWE Id : 16
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
### A Client Error response code was returned by the server
##### Informational (High)
  
  
  
  
#### Description
<p>A response code of 403 was returned by the server.</p><p>This may indicate that the application is failing to handle unexpected input correctly.</p><p>Raised by the 'Alert on HTTP Response Code Error' script</p>
  
  
  
* URL: [http://localhost:8080/api/exams](http://localhost:8080/api/exams)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 403`
  
  
  
  
* URL: [http://localhost:8080/api/exams](http://localhost:8080/api/exams)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 401`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `DELETE`
  
  
  * Evidence: `HTTP/1.1 403`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/solution](http://localhost:8080/api/exams/examId/solution)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 403`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/participants](http://localhost:8080/api/exams/examId/participants)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 401`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 401`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/triesLeft](http://localhost:8080/api/exams/examId/triesLeft)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 401`
  
  
  
  
Instances: 7
  
### Solution
<p></p>
  
### Reference
* 

  
#### CWE Id : 388
  
#### WASC Id : 20
  
#### Source ID : 4

  
  
  
### Loosely Scoped Cookie
##### Informational (Low)
  
  
  
  
#### Description
<p>Cookies can be scoped by domain or path. This check is only concerned with domain scope.The domain scope applied to a cookie determines which domains can access it. For example, a cookie can be scoped strictly to a subdomain e.g. www.nottrusted.com, or loosely scoped to a parent domain e.g. nottrusted.com. In the latter case, any subdomain of nottrusted.com can access the cookie. Loosely scoped cookies are common in mega-applications like google.com and live.com. Cookies set from a subdomain like app.foo.bar are transmitted only to that domain by the browser. However, cookies scoped to a parent-level domain may be transmitted to the parent, or any subdomain of the parent.</p>
  
  
  
* URL: [http://localhost:8080/api/exams](http://localhost:8080/api/exams)
  
  
  * Method: `POST`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `DELETE`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/solution](http://localhost:8080/api/exams/examId/solution)
  
  
  * Method: `POST`
  
  
  
  
Instances: 3
  
### Solution
<p>Always scope cookies to a FQDN (Fully Qualified Domain Name).</p>
  
### Other information
<p>The origin domain used for comparison was: </p><p>localhost</p><p>JSESSIONID=53B7591D4D858D0A341A775202E5F0F0</p><p></p>
  
### Reference
* https://tools.ietf.org/html/rfc6265#section-4.1
* https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/06-Session_Management_Testing/02-Testing_for_Cookies_Attributes.html
* http://code.google.com/p/browsersec/wiki/Part2#Same-origin_policy_for_cookies

  
#### CWE Id : 565
  
#### WASC Id : 15
  
#### Source ID : 3
