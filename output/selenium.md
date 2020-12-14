
# ZAP Scanning Report

Generated on Mon, 14 Dec 2020 13:03:14


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 7 |
| Low | 1 |
| Informational | 4 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| Buffer Overflow | Medium | 2 | 
| CSP: script-src unsafe-inline | Medium | 4 | 
| CSP: style-src unsafe-inline | Medium | 4 | 
| CSP: Wildcard Directive | Medium | 4 | 
| HTTP Only Site | Medium | 1 | 
| Insecure HTTP Method - DELETE | Medium | 4 | 
| Integer Overflow Error | Medium | 5 | 
| Cross Site Scripting Weakness (Persistent in JSON Response) | Low | 1 | 
| Information Disclosure - Suspicious Comments | Informational | 2 | 
| Modern Web Application | Informational | 4 | 
| Timestamp Disclosure - Unix | Informational | 51 | 
| User Agent Fuzzer | Informational | 77 | 

## Alert Detail


  
  
  
### Buffer Overflow
##### Medium (Medium)
  
  
  
  
#### Description
<p>Buffer overflow errors are characterized by the overwriting of memory spaces of the background web process, which should have never been modified intentionally or unintentionally. Overwriting values of the IP (Instruction Pointer), BP (Base Pointer) and other registers causes exceptions, segmentation faults, and other process errors to occur. Usually these errors end execution of the application in an unexpected way. </p>
  
  
  
* URL: [http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution](http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `comment`
  
  
  * Evidence: `POST http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution HTTP/1.1
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:81.0) Gecko/20100101 Firefox/81.0
Accept: application/json, text/plain, */*
Accept-Language: en-US,en;q=0.5
Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJQb2lpcUlSRXNoSWRHOUZidkc2bnlvQ3N1WHVmQlY0UW5VR0Y0WW5Vd2VJIn0.eyJleHAiOjE2MDc5NTA4NzgsImlhdCI6MTYwNzk1MDU3OCwiYXV0aF90aW1lIjoxNjA3OTUwNTM0LCJqdGkiOiJiNzlkYjI1YS0zMzEzLTRjODEtOWVhYS0zNjBhM2IyZTE4OTAiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjkwODAvYXV0aC9yZWFsbXMvZXhhbSIsImF1ZCI6ImFjY291bnQiLCJzdWIiOiI2NGQwNjZiYi1hNzk5LTQ5MDQtODFkYy0wZTg1MWJlZjJhNWYiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJ1aSIsIm5vbmNlIjoiNzRlYjEzZWUtYTdjYy00M2UzLWFlMTYtNDM4Y2MxNTZhM2NmIiwic2Vzc2lvbl9zdGF0ZSI6ImEzNGY0YjVlLTRkMzItNDJmNy1hMWE3LTEwNjQyMThhMDA2MyIsImFjciI6IjAiLCJhbGxvd2VkLW9yaWdpbnMiOlsiaHR0cHM6Ly9sb2NhbGhvc3QiLCJodHRwOi8vbG9jYWxob3N0OjgwODAiLCJodHRwOi8vbG9jYWxob3N0OjQyMDAiXSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJUZXN0IFVzZXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJ1c2VyIiwiZ2l2ZW5fbmFtZSI6IlRlc3QiLCJmYW1pbHlfbmFtZSI6IlVzZXIiLCJlbWFpbCI6InRlc3RAdXNlci5jb20ifQ.PhB8ewGJXd2hnVZvnwLdiRFCmutimkGQHxA_1VclkdTnkbtzv62IQH4Aza5DC4ViFu5hQwb0kD_oo4dhVnCpLKmgS1_vHXDiQc29HHHltLdquJFLN5M1b892vHONZfoxacQNw3azB-JAiWbSFjVk6blxTq168B0s9BO1NrFzDg_DZsyPa3mydDc2PGdrCLZwvV0Gmh3UsUseAK2Hp2eGsxkys05nbIKaWCsBN8fCC1wwQ7oHp4OkvunFxAMY4AVJfFcoHyp35hGxg3Av_yFE-4-nMyrk76nRCGjGuK3Ry0aK5mR2JwoVunpXN6ymEY74ePm_YLfYpG8JA5vIxDrPuQ
Content-Type: application/json
Content-Length: 2130
Origin: http://localhost:8080
Connection: keep-alive
Referer: http://localhost:8080/exam/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4
Host: localhost:8080

`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `POST`
  
  
  * Parameter: `file`
  
  
  * Evidence: `POST http://localhost:8080/api/exams/ HTTP/1.1
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:81.0) Gecko/20100101 Firefox/81.0
Accept: application/json, text/plain, */*
Accept-Language: en-US,en;q=0.5
Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJQb2lpcUlSRXNoSWRHOUZidkc2bnlvQ3N1WHVmQlY0UW5VR0Y0WW5Vd2VJIn0.eyJleHAiOjE2MDc5NTA4NzgsImlhdCI6MTYwNzk1MDU3OCwiYXV0aF90aW1lIjoxNjA3OTUwNTM0LCJqdGkiOiJiNzlkYjI1YS0zMzEzLTRjODEtOWVhYS0zNjBhM2IyZTE4OTAiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjkwODAvYXV0aC9yZWFsbXMvZXhhbSIsImF1ZCI6ImFjY291bnQiLCJzdWIiOiI2NGQwNjZiYi1hNzk5LTQ5MDQtODFkYy0wZTg1MWJlZjJhNWYiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJ1aSIsIm5vbmNlIjoiNzRlYjEzZWUtYTdjYy00M2UzLWFlMTYtNDM4Y2MxNTZhM2NmIiwic2Vzc2lvbl9zdGF0ZSI6ImEzNGY0YjVlLTRkMzItNDJmNy1hMWE3LTEwNjQyMThhMDA2MyIsImFjciI6IjAiLCJhbGxvd2VkLW9yaWdpbnMiOlsiaHR0cHM6Ly9sb2NhbGhvc3QiLCJodHRwOi8vbG9jYWxob3N0OjgwODAiLCJodHRwOi8vbG9jYWxob3N0OjQyMDAiXSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJUZXN0IFVzZXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJ1c2VyIiwiZ2l2ZW5fbmFtZSI6IlRlc3QiLCJmYW1pbHlfbmFtZSI6IlVzZXIiLCJlbWFpbCI6InRlc3RAdXNlci5jb20ifQ.PhB8ewGJXd2hnVZvnwLdiRFCmutimkGQHxA_1VclkdTnkbtzv62IQH4Aza5DC4ViFu5hQwb0kD_oo4dhVnCpLKmgS1_vHXDiQc29HHHltLdquJFLN5M1b892vHONZfoxacQNw3azB-JAiWbSFjVk6blxTq168B0s9BO1NrFzDg_DZsyPa3mydDc2PGdrCLZwvV0Gmh3UsUseAK2Hp2eGsxkys05nbIKaWCsBN8fCC1wwQ7oHp4OkvunFxAMY4AVJfFcoHyp35hGxg3Av_yFE-4-nMyrk76nRCGjGuK3Ry0aK5mR2JwoVunpXN6ymEY74ePm_YLfYpG8JA5vIxDrPuQ
Content-Type: multipart/form-data; boundary=---------------------------26255955703104210280144612049
Content-Length: 2316
Origin: http://localhost:8080
Connection: keep-alive
Referer: http://localhost:8080/
Host: localhost:8080

`
  
  
  
  
Instances: 2
  
### Solution
<p>Rewrite the background program using proper return length checking.  This will require a recompile of the background executable.</p>
  
### Other information
<p>Potential Buffer Overflow.  The script closed the connection and threw a 500 Internal Server Error</p>
  
### Reference
* https://owasp.org/www-community/attacks/Buffer_overflow_attack

  
#### CWE Id : 120
  
#### WASC Id : 7
  
#### Source ID : 1

  
  
  
### CSP: script-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>script-src includes unsafe-inline.</p>
  
  
  
* URL: [http://localhost:8080/sitemap.xml](http://localhost:8080/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080/robots.txt](http://localhost:8080/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080/](http://localhost:8080/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080](http://localhost:8080)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
Instances: 4
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
### CSP: style-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>style-src includes unsafe-inline.</p>
  
  
  
* URL: [http://localhost:8080/sitemap.xml](http://localhost:8080/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080/robots.txt](http://localhost:8080/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080/](http://localhost:8080/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080](http://localhost:8080)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
Instances: 4
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
### CSP: Wildcard Directive
##### Medium (Medium)
  
  
  
  
#### Description
<p>The following directives either allow wildcard sources (or ancestors), are not defined, or are overly broadly defined: </p><p>frame-ancestors, form-action</p><p></p><p>The directive(s): frame-ancestors, form-action are among the directives that do not fallback to default-src, missing/excluding them is the same as allowing anything.</p>
  
  
  
* URL: [http://localhost:8080](http://localhost:8080)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080/](http://localhost:8080/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080/robots.txt](http://localhost:8080/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
* URL: [http://localhost:8080/sitemap.xml](http://localhost:8080/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' 'unsafe-inline' http://localhost:9080`
  
  
  
  
Instances: 4
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
### HTTP Only Site
##### Medium (Medium)
  
  
  
  
#### Description
<p>The site is only served under HTTP and not HTTPS.</p>
  
  
  
* URL: [http://localhost:8080/](http://localhost:8080/)
  
  
  * Method: `GET`
  
  
  
  
Instances: 1
  
### Solution
<p>Configure your web or application server to use SSL (https).</p>
  
### Other information
<p>Failed to connect.</p><p>ZAP attempted to connect via: https://localhost:443/</p>
  
### Reference
* https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html
* https://letsencrypt.org/

  
#### CWE Id : 311
  
#### WASC Id : 4
  
#### Source ID : 1

  
  
  
### Insecure HTTP Method - DELETE
##### Medium (Medium)
  
  
  
  
#### Description
<p>The insecure HTTP method [DELETE] is enabled on the web server for this resource. Depending on the web server configuration, and the underlying implementation responsible for serving the resource, this might or might not be exploitable. The TRACK and TRACE methods may be used by an attacker, to gain access to the authorisation token/session cookie of an application user, even if the session cookie is protected using the HttpOnly flag. For the attack to be successful, the application user must typically be using an older web browser, or a web browser which has a Same Origin Policy (SOP) bypass vulnerability. The CONNECT method can be used by a web client to create an HTTP tunnel to third party websites or services.</p>
  
  
  
* URL: [http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4](http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4)
  
  
  * Method: `OPTIONS`
  
  
  * Evidence: `DELETE`
  
  
  
  
* URL: [http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333](http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333)
  
  
  * Method: `OPTIONS`
  
  
  * Evidence: `DELETE`
  
  
  
  
* URL: [http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c](http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c)
  
  
  * Method: `OPTIONS`
  
  
  * Evidence: `DELETE`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a)
  
  
  * Method: `OPTIONS`
  
  
  * Evidence: `DELETE`
  
  
  
  
Instances: 4
  
### Solution
<p>Disable insecure methods such as TRACK, TRACE, and CONNECT on the web server, and ensure that the underlying service implementation does not support insecure methods.</p>
  
### Other information
<p>The OPTIONS method disclosed the following enabled HTTP methods for this resource: [GET,HEAD,DELETE,OPTIONS]</p>
  
### Reference
* http://projects.webappsec.org/Fingerprinting
* 

  
#### CWE Id : 200
  
#### WASC Id : 45
  
#### Source ID : 1

  
  
  
### Integer Overflow Error
##### Medium (Medium)
  
  
  
  
#### Description
<p>An integer overflow condition exists when an integer, which has not been properly checked from the input stream is used within a compiled program. </p>
  
  
  
* URL: [http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution](http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `comment`
  
  
  * Attack: `37297202210787925938768981935271717440180525`
  
  
  
  
* URL: [http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution](http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `answers[0]`
  
  
  * Attack: `00000000000000000000000000000000000000000000`
  
  
  
  
* URL: [http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution](http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `answers[1]`
  
  
  * Attack: `00000000000000000000000000000000000000000000`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/solution](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `comment`
  
  
  * Attack: `13155271845782279926303883899117466174293523`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `POST`
  
  
  * Parameter: `file`
  
  
  * Attack: `12317714047881663829730913934650638731032681`
  
  
  
  
Instances: 5
  
### Solution
<p>Rewrite the background program using proper checking of the size of integer being input to prevent overflows and divide by 0 errors.  This will require a recompile of the background executable.</p>
  
### Other information
<p>Potential Integer Overflow.  Status code changed on the input of a long string of random integers.</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246946/Integer%20Overflows

  
#### CWE Id : 190
  
#### WASC Id : 3
  
#### Source ID : 1

  
  
  
### Cross Site Scripting Weakness (Persistent in JSON Response)
##### Low (Low)
  
  
  
  
#### Description
<p>A XSS attack was found in a JSON response, this might leave content consumers vulnerable to attack if they don't appropriately handle the data (response).</p>
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/participants](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/participants)
  
  
  * Method: `GET`
  
  
  * Parameter: `comment`
  
  
  * Attack: `<script>alert(1);</script>`
  
  
  
  
Instances: 1
  
### Solution
<p>Phase: Architecture and Design</p><p>Use a vetted library or framework that does not allow this weakness to occur or provides constructs that make this weakness easier to avoid.</p><p>Examples of libraries and frameworks that make it easier to generate properly encoded output include Microsoft's Anti-XSS library, the OWASP ESAPI Encoding module, and Apache Wicket.</p><p></p><p>Phases: Implementation; Architecture and Design</p><p>Understand the context in which your data will be used and the encoding that will be expected. This is especially important when transmitting data between different components, or when generating outputs that can contain multiple encodings at the same time, such as web pages or multi-part mail messages. Study all expected communication protocols and data representations to determine the required encoding strategies.</p><p>For any data that will be output to another web page, especially any data that was received from external inputs, use the appropriate encoding on all non-alphanumeric characters.</p><p>Consult the XSS Prevention Cheat Sheet for more details on the types of encoding and escaping that are needed.</p><p></p><p>Phase: Architecture and Design</p><p>For any security checks that are performed on the client side, ensure that these checks are duplicated on the server side, in order to avoid CWE-602. Attackers can bypass the client-side checks by modifying values after the checks have been performed, or by changing the client to remove the client-side checks entirely. Then, these modified values would be submitted to the server.</p><p></p><p>If available, use structured mechanisms that automatically enforce the separation between data and code. These mechanisms may be able to provide the relevant quoting, encoding, and validation automatically, instead of relying on the developer to provide this capability at every point where output is generated.</p><p></p><p>Phase: Implementation</p><p>For every web page that is generated, use and specify a character encoding such as ISO-8859-1 or UTF-8. When an encoding is not specified, the web browser may choose a different encoding by guessing which encoding is actually being used by the web page. This can cause the web browser to treat certain sequences as special, opening up the client to subtle XSS attacks. See CWE-116 for more mitigations related to encoding/escaping.</p><p></p><p>To help mitigate XSS attacks against the user's session cookie, set the session cookie to be HttpOnly. In browsers that support the HttpOnly feature (such as more recent versions of Internet Explorer and Firefox), this attribute can prevent the user's session cookie from being accessible to malicious client-side scripts that use document.cookie. This is not a complete solution, since HttpOnly is not supported by all browsers. More importantly, XMLHTTPRequest and other powerful browser technologies provide read access to HTTP headers, including the Set-Cookie header in which the HttpOnly flag is set.</p><p></p><p>Assume all input is malicious. Use an "accept known good" input validation strategy, i.e., use an allow list of acceptable inputs that strictly conform to specifications. Reject any input that does not strictly conform to specifications, or transform it into something that does. Do not rely exclusively on looking for malicious or malformed inputs (i.e., do not rely on a deny list). However, deny lists can be useful for detecting potential attacks or determining which inputs are so malformed that they should be rejected outright.</p><p></p><p>When performing input validation, consider all potentially relevant properties, including length, type of input, the full range of acceptable values, missing or extra inputs, syntax, consistency across related fields, and conformance to business rules. As an example of business rule logic, "boat" may be syntactically valid because it only contains alphanumeric characters, but it is not valid if you are expecting colors such as "red" or "blue."</p><p></p><p>Ensure that you perform input validation at well-defined interfaces within the application. This will help protect the application even if a component is reused or moved elsewhere.</p>
  
### Other information
<p>Raised with LOW confidence as the Content-Type is not HTML </p>
  
### Reference
* http://projects.webappsec.org/Cross-Site-Scripting
* http://cwe.mitre.org/data/definitions/79.html

  
#### CWE Id : 79
  
#### WASC Id : 8
  
#### Source ID : 1

  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [http://localhost:8080/polyfills.35a5ca1855eb057f016a.js](http://localhost:8080/polyfills.35a5ca1855eb057f016a.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  
  
Instances: 2
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following comment/snippet was identified via the pattern: \bSELECT\b</p><p>(window.webpackJsonp=window.webpackJsonp||[]).push([[2],{1:function(e,t,n){e.exports=n("hN/g")},"hN/g":function(e,t,n){"use strict";n.r(t),n("pDpN")},pDpN:function(e,t,n){var o,r;void 0===(r="function"==typeof(o=function(){"use strict";!function(e){const t=e.performance;function n(e){t&&t.mark&&t.mark(e)}function o(e,n){t&&t.measure&&t.measure(e,n)}n("Zone");const r=e.__Zone_symbol_prefix||"__zone_symbol__";function s(e){return r+e}const i=!0===e[s("forceDuplicateZoneCheck")];if(e.Zone){if(i||"function"!=typeof e.Zone.__symbol__)throw new Error("Zone already loaded.");return e.Zone}class a{constructor(e,t){this._parent=e,this._name=t?t.name||"unnamed":"<root>",this._properties=t&&t.properties||{},this._zoneDelegate=new l(this,this._parent&&this._parent._zoneDelegate,t)}static assertZonePatched(){if(e.Promise!==C.ZoneAwarePromise)throw new Error("Zone.js has detected that ZoneAwarePromise `(window|global).Promise` has been overwritten.\nMost likely cause is that a Promise polyfill has been loaded after Zone.js (Polyfilling Promise api is not necessary when zone.js is loaded. If you must load one, do so before loading zone.js.)")}static get root(){let e=a.current;for(;e.parent;)e=e.parent;return e}static get current(){return z.zone}static get currentTask(){return j}static __load_patch(t,r){if(C.hasOwnProperty(t)){if(i)throw Error("Already loaded patch: "+t)}else if(!e["__Zone_disable_"+t]){const s="Zone:"+t;n(s),C[t]=r(e,a,O),o(s,s)}}get parent(){return this._parent}get name(){return this._name}get(e){const t=this.getZoneWith(e);if(t)return t._properties[e]}getZoneWith(e){let t=this;for(;t;){if(t._properties.hasOwnProperty(e))return t;t=t._parent}return null}fork(e){if(!e)throw new Error("ZoneSpec required!");return this._zoneDelegate.fork(this,e)}wrap(e,t){if("function"!=typeof e)throw new Error("Expecting function got: "+e);const n=this._zoneDelegate.intercept(this,e,t),o=this;return function(){return o.runGuarded(n,this,arguments,t)}}run(e,t,n,o){z={parent:z,zone:this};try{return this._zoneDelegate.invoke(this,e,t,n,o)}finally{z=z.parent}}runGuarded(e,t=null,n,o){z={parent:z,zone:this};try{try{return this._zoneDelegate.invoke(this,e,t,n,o)}catch(r){if(this._zoneDelegate.handleError(this,r))throw r}}finally{z=z.parent}}runTask(e,t,n){if(e.zone!=this)throw new Error("A task can only be run in the zone of creation! (Creation: "+(e.zone||y).name+"; Execution: "+this.name+")");if(e.state===v&&(e.type===P||e.type===D))return;const o=e.state!=E;o&&e._transitionTo(E,T),e.runCount++;const r=j;j=e,z={parent:z,zone:this};try{e.type==D&&e.data&&!e.data.isPeriodic&&(e.cancelFn=void 0);try{return this._zoneDelegate.invokeTask(this,e,t,n)}catch(s){if(this._zoneDelegate.handleError(this,s))throw s}}finally{e.state!==v&&e.state!==Z&&(e.type==P||e.data&&e.data.isPeriodic?o&&e._transitionTo(T,E):(e.runCount=0,this._updateTaskCount(e,-1),o&&e._transitionTo(v,E,v))),z=z.parent,j=r}}scheduleTask(e){if(e.zone&&e.zone!==this){let t=this;for(;t;){if(t===e.zone)throw Error(`can not reschedule task to ${this.name} which is descendants of the original zone ${e.zone.name}`);t=t.parent}}e._transitionTo(b,v);const t=[];e._zoneDelegates=t,e._zone=this;try{e=this._zoneDelegate.scheduleTask(this,e)}catch(n){throw e._transitionTo(Z,b,v),this._zoneDelegate.handleError(this,n),n}return e._zoneDelegates===t&&this._updateTaskCount(e,1),e.state==b&&e._transitionTo(T,b),e}scheduleMicroTask(e,t,n,o){return this.scheduleTask(new u(S,e,t,n,o,void 0))}scheduleMacroTask(e,t,n,o,r){return this.scheduleTask(new u(D,e,t,n,o,r))}scheduleEventTask(e,t,n,o,r){return this.scheduleTask(new u(P,e,t,n,o,r))}cancelTask(e){if(e.zone!=this)throw new Error("A task can only be cancelled in the zone of creation! (Creation: "+(e.zone||y).name+"; Execution: "+this.name+")");e._transitionTo(w,T,E);try{this._zoneDelegate.cancelTask(this,e)}catch(t){throw e._transitionTo(Z,w),this._zoneDelegate.handleError(this,t),t}return this._updateTaskCount(e,-1),e._transitionTo(v,w),e.runCount=0,e}_updateTaskCount(e,t){const n=e._zoneDelegates;-1==t&&(e._zoneDelegates=null);for(let o=0;o<n.length;o++)n[o]._updateTaskCount(e.type,t)}}a.__symbol__=s;const c={name:"",onHasTask:(e,t,n,o)=>e.hasTask(n,o),onScheduleTask:(e,t,n,o)=>e.scheduleTask(n,o),onInvokeTask:(e,t,n,o,r,s)=>e.invokeTask(n,o,r,s),onCancelTask:(e,t,n,o)=>e.cancelTask(n,o)};class l{constructor(e,t,n){this._taskCounts={microTask:0,macroTask:0,eventTask:0},this.zone=e,this._parentDelegate=t,this._forkZS=n&&(n&&n.onFork?n:t._forkZS),this._forkDlgt=n&&(n.onFork?t:t._forkDlgt),this._forkCurrZone=n&&(n.onFork?this.zone:t._forkCurrZone),this._interceptZS=n&&(n.onIntercept?n:t._interceptZS),this._interceptDlgt=n&&(n.onIntercept?t:t._interceptDlgt),this._interceptCurrZone=n&&(n.onIntercept?this.zone:t._interceptCurrZone),this._invokeZS=n&&(n.onInvoke?n:t._invokeZS),this._invokeDlgt=n&&(n.onInvoke?t:t._invokeDlgt),this._invokeCurrZone=n&&(n.onInvoke?this.zone:t._invokeCurrZone),this._handleErrorZS=n&&(n.onHandleError?n:t._handleErrorZS),this._handleErrorDlgt=n&&(n.onHandleError?t:t._handleErrorDlgt),this._handleErrorCurrZone=n&&(n.onHandleError?this.zone:t._handleErrorCurrZone),this._scheduleTaskZS=n&&(n.onScheduleTask?n:t._scheduleTaskZS),this._scheduleTaskDlgt=n&&(n.onScheduleTask?t:t._scheduleTaskDlgt),this._scheduleTaskCurrZone=n&&(n.onScheduleTask?this.zone:t._scheduleTaskCurrZone),this._invokeTaskZS=n&&(n.onInvokeTask?n:t._invokeTaskZS),this._invokeTaskDlgt=n&&(n.onInvokeTask?t:t._invokeTaskDlgt),this._invokeTaskCurrZone=n&&(n.onInvokeTask?this.zone:t._invokeTaskCurrZone),this._cancelTaskZS=n&&(n.onCancelTask?n:t._cancelTaskZS),this._cancelTaskDlgt=n&&(n.onCancelTask?t:t._cancelTaskDlgt),this._cancelTaskCurrZone=n&&(n.onCancelTask?this.zone:t._cancelTaskCurrZone),this._hasTaskZS=null,this._hasTaskDlgt=null,this._hasTaskDlgtOwner=null,this._hasTaskCurrZone=null;const o=n&&n.onHasTask;(o||t&&t._hasTaskZS)&&(this._hasTaskZS=o?n:c,this._hasTaskDlgt=t,this._hasTaskDlgtOwner=this,this._hasTaskCurrZone=e,n.onScheduleTask||(this._scheduleTaskZS=c,this._scheduleTaskDlgt=t,this._scheduleTaskCurrZone=this.zone),n.onInvokeTask||(this._invokeTaskZS=c,this._invokeTaskDlgt=t,this._invokeTaskCurrZone=this.zone),n.onCancelTask||(this._cancelTaskZS=c,this._cancelTaskDlgt=t,this._cancelTaskCurrZone=this.zone))}fork(e,t){return this._forkZS?this._forkZS.onFork(this._forkDlgt,this.zone,e,t):new a(e,t)}intercept(e,t,n){return this._interceptZS?this._interceptZS.onIntercept(this._interceptDlgt,this._interceptCurrZone,e,t,n):t}invoke(e,t,n,o,r){return this._invokeZS?this._invokeZS.onInvoke(this._invokeDlgt,this._invokeCurrZone,e,t,n,o,r):t.apply(n,o)}handleError(e,t){return!this._handleErrorZS||this._handleErrorZS.onHandleError(this._handleErrorDlgt,this._handleErrorCurrZone,e,t)}scheduleTask(e,t){let n=t;if(this._scheduleTaskZS)this._hasTaskZS&&n._zoneDelegates.push(this._hasTaskDlgtOwner),n=this._scheduleTaskZS.onScheduleTask(this._scheduleTaskDlgt,this._scheduleTaskCurrZone,e,t),n||(n=t);else if(t.scheduleFn)t.scheduleFn(t);else{if(t.type!=S)throw new Error("Task is missing scheduleFn.");k(t)}return n}invokeTask(e,t,n,o){return this._invokeTaskZS?this._invokeTaskZS.onInvokeTask(this._invokeTaskDlgt,this._invokeTaskCurrZone,e,t,n,o):t.callback.apply(n,o)}cancelTask(e,t){let n;if(this._cancelTaskZS)n=this._cancelTaskZS.onCancelTask(this._cancelTaskDlgt,this._cancelTaskCurrZone,e,t);else{if(!t.cancelFn)throw Error("Task is not cancelable");n=t.cancelFn(t)}return n}hasTask(e,t){try{this._hasTaskZS&&this._hasTaskZS.onHasTask(this._hasTaskDlgt,this._hasTaskCurrZone,e,t)}catch(n){this.handleError(e,n)}}_updateTaskCount(e,t){const n=this._taskCounts,o=n[e],r=n[e]=o+t;if(r<0)throw new Error("More tasks executed then were scheduled.");0!=o&&0!=r||this.hasTask(this.zone,{microTask:n.microTask>0,macroTask:n.macroTask>0,eventTask:n.eventTask>0,change:e})}}class u{constructor(t,n,o,r,s,i){if(this._zone=null,this.runCount=0,this._zoneDelegates=null,this._state="notScheduled",this.type=t,this.source=n,this.data=r,this.scheduleFn=s,this.cancelFn=i,!o)throw new Error("callback is not defined");this.callback=o;const a=this;this.invoke=t===P&&r&&r.useG?u.invokeTask:function(){return u.invokeTask.call(e,a,this,arguments)}}static invokeTask(e,t,n){e||(e=this),I++;try{return e.runCount++,e.zone.runTask(e,t,n)}finally{1==I&&m(),I--}}get zone(){return this._zone}get state(){return this._state}cancelScheduleRequest(){this._transitionTo(v,b)}_transitionTo(e,t,n){if(this._state!==t&&this._state!==n)throw new Error(`${this.type} '${this.source}': can not transition to '${e}', expecting state '${t}'${n?" or '"+n+"'":""}, was '${this._state}'.`);this._state=e,e==v&&(this._zoneDelegates=null)}toString(){return this.data&&void 0!==this.data.handleId?this.data.handleId.toString():Object.prototype.toString.call(this)}toJSON(){return{type:this.type,state:this.state,source:this.source,zone:this.zone.name,runCount:this.runCount}}}const h=s("setTimeout"),p=s("Promise"),f=s("then");let d,g=[],_=!1;function k(t){if(0===I&&0===g.length)if(d||e[p]&&(d=e[p].resolve(0)),d){let e=d[f];e||(e=d.then),e.call(d,m)}else e[h](m,0);t&&g.push(t)}function m(){if(!_){for(_=!0;g.length;){const t=g;g=[];for(let n=0;n<t.length;n++){const o=t[n];try{o.zone.runTask(o,null,null)}catch(e){O.onUnhandledError(e)}}}O.microtaskDrainDone(),_=!1}}const y={name:"NO ZONE"},v="notScheduled",b="scheduling",T="scheduled",E="running",w="canceling",Z="unknown",S="microTask",D="macroTask",P="eventTask",C={},O={symbol:s,currentZoneFrame:()=>z,onUnhandledError:N,microtaskDrainDone:N,scheduleMicroTask:k,showUncaughtError:()=>!a[s("ignoreConsoleErrorUncaughtError")],patchEventTarget:()=>[],patchOnProperties:N,patchMethod:()=>N,bindArguments:()=>[],patchThen:()=>N,patchMacroTask:()=>N,setNativePromise:e=>{e&&"function"==typeof e.resolve&&(d=e.resolve(0))},patchEventPrototype:()=>N,isIEOrEdge:()=>!1,getGlobalObjects:()=>{},ObjectDefineProperty:()=>N,ObjectGetOwnPropertyDescriptor:()=>{},ObjectCreate:()=>{},ArraySlice:()=>[],patchClass:()=>N,wrapWithCurrentZone:()=>N,filterProperties:()=>[],attachOriginToPatched:()=>N,_redefineProperty:()=>N,patchCallbacks:()=>N};let z={parent:null,zone:new a(null,null)},j=null,I=0;function N(){}o("Zone","Zone"),e.Zone=a}("undefined"!=typeof window&&window||"undefined"!=typeof self&&self||global),Zone.__load_patch("ZoneAwarePromise",(e,t,n)=>{const o=Object.getOwnPropertyDescriptor,r=Object.defineProperty,s=n.symbol,i=[],a=!0===e[s("DISABLE_WRAPPING_UNCAUGHT_PROMISE_REJECTION")],c=s("Promise"),l=s("then");n.onUnhandledError=e=>{if(n.showUncaughtError()){const t=e&&e.rejection;t?console.error("Unhandled Promise rejection:",t instanceof Error?t.message:t,"; Zone:",e.zone.name,"; Task:",e.task&&e.task.source,"; Value:",t,t instanceof Error?t.stack:void 0):console.error(e)}},n.microtaskDrainDone=()=>{for(;i.length;){const t=i.shift();try{t.zone.runGuarded(()=>{throw t})}catch(e){h(e)}}};const u=s("unhandledPromiseRejectionHandler");function h(e){n.onUnhandledError(e);try{const n=t[u];"function"==typeof n&&n.call(this,e)}catch(o){}}function p(e){return e&&e.then}function f(e){return e}function d(e){return O.reject(e)}const g=s("state"),_=s("value"),k=s("finally"),m=s("parentPromiseValue"),y=s("parentPromiseState"),v=null,b=!0,T=!1;function E(e,t){return n=>{try{Z(e,t,n)}catch(o){Z(e,!1,o)}}}const w=s("currentTaskTrace");function Z(e,o,s){const c=function(){let e=!1;return function(t){return function(){e||(e=!0,t.apply(null,arguments))}}}();if(e===s)throw new TypeError("Promise resolved with itself");if(e[g]===v){let h=null;try{"object"!=typeof s&&"function"!=typeof s||(h=s&&s.then)}catch(u){return c(()=>{Z(e,!1,u)})(),e}if(o!==T&&s instanceof O&&s.hasOwnProperty(g)&&s.hasOwnProperty(_)&&s[g]!==v)D(s),Z(e,s[g],s[_]);else if(o!==T&&"function"==typeof h)try{h.call(s,c(E(e,o)),c(E(e,!1)))}catch(u){c(()=>{Z(e,!1,u)})()}else{e[g]=o;const c=e[_];if(e[_]=s,e[k]===k&&o===b&&(e[g]=e[y],e[_]=e[m]),o===T&&s instanceof Error){const e=t.currentTask&&t.currentTask.data&&t.currentTask.data.__creationTrace__;e&&r(s,w,{configurable:!0,enumerable:!1,writable:!0,value:e})}for(let t=0;t<c.length;)P(e,c[t++],c[t++],c[t++],c[t++]);if(0==c.length&&o==T){e[g]=0;let o=s;if(!a)try{throw new Error("Uncaught (in promise): "+((l=s)&&l.toString===Object.prototype.toString?(l.constructor&&l.constructor.name||"")+": "+JSON.stringify(l):l?l.toString():Object.prototype.toString.call(l))+(s&&s.stack?"\n"+s.stack:""))}catch(u){o=u}o.rejection=s,o.promise=e,o.zone=t.current,o.task=t.currentTask,i.push(o),n.scheduleMicroTask()}}}var l;return e}const S=s("rejectionHandledHandler");function D(e){if(0===e[g]){try{const n=t[S];n&&"function"==typeof n&&n.call(this,{rejection:e[_],promise:e})}catch(n){}e[g]=T;for(let t=0;t<i.length;t++)e===i[t].promise&&i.splice(t,1)}}function P(e,t,n,o,r){D(e);const s=e[g],i=s?"function"==typeof o?o:f:"function"==typeof r?r:d;t.scheduleMicroTask("Promise.then",()=>{try{const o=e[_],r=!!n&&k===n[k];r&&(n[m]=o,n[y]=s);const a=t.run(i,void 0,r&&i!==d&&i!==f?[]:[o]);Z(n,!0,a)}catch(o){Z(n,!1,o)}},n)}const C=function(){};class O{static toString(){return"function ZoneAwarePromise() { [native code] }"}static resolve(e){return Z(new this(null),b,e)}static reject(e){return Z(new this(null),T,e)}static race(e){let t,n,o=new this((e,o)=>{t=e,n=o});function r(e){t(e)}function s(e){n(e)}for(let i of e)p(i)||(i=this.resolve(i)),i.then(r,s);return o}static all(e){return O.allWithCallback(e)}static allSettled(e){return(this&&this.prototype instanceof O?this:O).allWithCallback(e,{thenCallback:e=>({status:"fulfilled",value:e}),errorCallback:e=>({status:"rejected",reason:e})})}static allWithCallback(e,t){let n,o,r=new this((e,t)=>{n=e,o=t}),s=2,i=0;const a=[];for(let l of e){p(l)||(l=this.resolve(l));const e=i;try{l.then(o=>{a[e]=t?t.thenCallback(o):o,s--,0===s&&n(a)},r=>{t?(a[e]=t.errorCallback(r),s--,0===s&&n(a)):o(r)})}catch(c){o(c)}s++,i++}return s-=2,0===s&&n(a),r}constructor(e){const t=this;if(!(t instanceof O))throw new Error("Must be an instanceof Promise.");t[g]=v,t[_]=[];try{e&&e(E(t,b),E(t,T))}catch(n){Z(t,!1,n)}}get[Symbol.toStringTag](){return"Promise"}get[Symbol.species](){return O}then(e,n){let o=this.constructor[Symbol.species];o&&"function"==typeof o||(o=this.constructor||O);const r=new o(C),s=t.current;return this[g]==v?this[_].push(s,r,e,n):P(this,s,r,e,n),r}catch(e){return this.then(null,e)}finally(e){let n=this.constructor[Symbol.species];n&&"function"==typeof n||(n=O);const o=new n(C);o[k]=k;const r=t.current;return this[g]==v?this[_].push(r,o,e,e):P(this,r,o,e,e),o}}O.resolve=O.resolve,O.reject=O.reject,O.race=O.race,O.all=O.all;const z=e[c]=e.Promise,j=t.__symbol__("ZoneAwarePromise");let I=o(e,"Promise");I&&!I.configurable||(I&&delete I.writable,I&&delete I.value,I||(I={configurable:!0,enumerable:!0}),I.get=function(){return e[j]?e[j]:e[c]},I.set=function(t){t===O?e[j]=t:(e[c]=t,t.prototype[l]||R(t),n.setNativePromise(t))},r(e,"Promise",I)),e.Promise=O;const N=s("thenPatched");function R(e){const t=e.prototype,n=o(t,"then");if(n&&(!1===n.writable||!n.configurable))return;const r=t.then;t[l]=r,e.prototype.then=function(e,t){return new O((e,t)=>{r.call(this,e,t)}).then(e,t)},e[N]=!0}if(n.patchThen=R,z){R(z);const t=e.fetch;"function"==typeof t&&(e[n.symbol("fetch")]=t,e.fetch=(x=t,function(){let e=x.apply(this,arguments);if(e instanceof O)return e;let t=e.constructor;return t[N]||R(t),e}))}var x;return Promise[t.__symbol__("uncaughtPromiseErrors")]=i,O});const e=Object.getOwnPropertyDescriptor,t=Object.defineProperty,n=Object.getPrototypeOf,o=Object.create,r=Array.prototype.slice,s="addEventListener",i="removeEventListener",a=Zone.__symbol__(s),c=Zone.__symbol__(i),l="true",u="false",h=Zone.__symbol__("");function p(e,t){return Zone.current.wrap(e,t)}function f(e,t,n,o,r){return Zone.current.scheduleMacroTask(e,t,n,o,r)}const d=Zone.__symbol__,g="undefined"!=typeof window,_=g?window:void 0,k=g&&_||"object"==typeof self&&self||global,m=[null];function y(e,t){for(let n=e.length-1;n>=0;n--)"function"==typeof e[n]&&(e[n]=p(e[n],t+"_"+n));return e}function v(e){return!e||!1!==e.writable&&!("function"==typeof e.get&&void 0===e.set)}const b="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope,T=!("nw"in k)&&void 0!==k.process&&"[object process]"==={}.toString.call(k.process),E=!T&&!b&&!(!g||!_.HTMLElement),w=void 0!==k.process&&"[object process]"==={}.toString.call(k.process)&&!b&&!(!g||!_.HTMLElement),Z={},S=function(e){if(!(e=e||k.event))return;let t=Z[e.type];t||(t=Z[e.type]=d("ON_PROPERTY"+e.type));const n=this||e.target||k,o=n[t];let r;if(E&&n===_&&"error"===e.type){const t=e;r=o&&o.call(this,t.message,t.filename,t.lineno,t.colno,t.error),!0===r&&e.preventDefault()}else r=o&&o.apply(this,arguments),null==r||r||e.preventDefault();return r};function D(n,o,r){let s=e(n,o);if(!s&&r&&e(r,o)&&(s={enumerable:!0,configurable:!0}),!s||!s.configurable)return;const i=d("on"+o+"patched");if(n.hasOwnProperty(i)&&n[i])return;delete s.writable,delete s.value;const a=s.get,c=s.set,l=o.substr(2);let u=Z[l];u||(u=Z[l]=d("ON_PROPERTY"+l)),s.set=function(e){let t=this;t||n!==k||(t=k),t&&(t[u]&&t.removeEventListener(l,S),c&&c.apply(t,m),"function"==typeof e?(t[u]=e,t.addEventListener(l,S,!1)):t[u]=null)},s.get=function(){let e=this;if(e||n!==k||(e=k),!e)return null;const t=e[u];if(t)return t;if(a){let t=a&&a.call(this);if(t)return s.set.call(this,t),"function"==typeof e.removeAttribute&&e.removeAttribute(o),t}return null},t(n,o,s),n[i]=!0}function P(e,t,n){if(t)for(let o=0;o<t.length;o++)D(e,"on"+t[o],n);else{const t=[];for(const n in e)"on"==n.substr(0,2)&&t.push(n);for(let o=0;o<t.length;o++)D(e,t[o],n)}}const C=d("originalInstance");function O(e){const n=k[e];if(!n)return;k[d(e)]=n,k[e]=function(){const t=y(arguments,e);switch(t.length){case 0:this[C]=new n;break;case 1:this[C]=new n(t[0]);break;case 2:this[C]=new n(t[0],t[1]);break;case 3:this[C]=new n(t[0],t[1],t[2]);break;case 4:this[C]=new n(t[0],t[1],t[2],t[3]);break;default:throw new Error("Arg list too long.")}},I(k[e],n);const o=new n((function(){}));let r;for(r in o)"XMLHttpRequest"===e&&"responseBlob"===r||function(n){"function"==typeof o[n]?k[e].prototype[n]=function(){return this[C][n].apply(this[C],arguments)}:t(k[e].prototype,n,{set:function(t){"function"==typeof t?(this[C][n]=p(t,e+"."+n),I(this[C][n],t)):this[C][n]=t},get:function(){return this[C][n]}})}(r);for(r in n)"prototype"!==r&&n.hasOwnProperty(r)&&(k[e][r]=n[r])}function z(t,o,r){let s=t;for(;s&&!s.hasOwnProperty(o);)s=n(s);!s&&t[o]&&(s=t);const i=d(o);let a=null;if(s&&!(a=s[i])&&(a=s[i]=s[o],v(s&&e(s,o)))){const e=r(a,i,o);s[o]=function(){return e(this,arguments)},I(s[o],a)}return a}function j(e,t,n){let o=null;function r(e){const t=e.data;return t.args[t.cbIdx]=function(){e.invoke.apply(this,arguments)},o.apply(t.target,t.args),e}o=z(e,t,e=>function(t,o){const s=n(t,o);return s.cbIdx>=0&&"function"==typeof o[s.cbIdx]?f(s.name,o[s.cbIdx],s,r):e.apply(t,o)})}function I(e,t){e[d("OriginalDelegate")]=t}let N=!1,R=!1;function x(){try{const e=_.navigator.userAgent;if(-1!==e.indexOf("MSIE ")||-1!==e.indexOf("Trident/"))return!0}catch(e){}return!1}function M(){if(N)return R;N=!0;try{const e=_.navigator.userAgent;-1===e.indexOf("MSIE ")&&-1===e.indexOf("Trident/")&&-1===e.indexOf("Edge/")||(R=!0)}catch(e){}return R}Zone.__load_patch("toString",e=>{const t=Function.prototype.toString,n=d("OriginalDelegate"),o=d("Promise"),r=d("Error"),s=function(){if("function"==typeof this){const s=this[n];if(s)return"function"==typeof s?t.call(s):Object.prototype.toString.call(s);if(this===Promise){const n=e[o];if(n)return t.call(n)}if(this===Error){const n=e[r];if(n)return t.call(n)}}return t.call(this)};s[n]=t,Function.prototype.toString=s;const i=Object.prototype.toString;Object.prototype.toString=function(){return this instanceof Promise?"[object Promise]":i.call(this)}});let L=!1;if("undefined"!=typeof window)try{const e=Object.defineProperty({},"passive",{get:function(){L=!0}});window.addEventListener("test",e,e),window.removeEventListener("test",e,e)}catch(he){L=!1}const A={useG:!0},H={},F={},G=new RegExp("^"+h+"(\\w+)(true|false)$"),B=d("propagationStopped");function q(e,t){const n=(t?t(e):e)+u,o=(t?t(e):e)+l,r=h+n,s=h+o;H[e]={},H[e].false=r,H[e].true=s}function W(e,t,o){const r=o&&o.add||s,a=o&&o.rm||i,c=o&&o.listeners||"eventListeners",p=o&&o.rmAll||"removeAllListeners",f=d(r),g="."+r+":",_=function(e,t,n){if(e.isRemoved)return;const o=e.callback;"object"==typeof o&&o.handleEvent&&(e.callback=e=>o.handleEvent(e),e.originalDelegate=o),e.invoke(e,t,[n]);const r=e.options;r&&"object"==typeof r&&r.once&&t[a].call(t,n.type,e.originalDelegate?e.originalDelegate:e.callback,r)},k=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[H[t.type].false];if(o)if(1===o.length)_(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)_(e[o],n,t)}},m=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[H[t.type].true];if(o)if(1===o.length)_(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)_(e[o],n,t)}};function y(t,o){if(!t)return!1;let s=!0;o&&void 0!==o.useG&&(s=o.useG);const i=o&&o.vh;let _=!0;o&&void 0!==o.chkDup&&(_=o.chkDup);let y=!1;o&&void 0!==o.rt&&(y=o.rt);let v=t;for(;v&&!v.hasOwnProperty(r);)v=n(v);if(!v&&t[r]&&(v=t),!v)return!1;if(v[f])return!1;const b=o&&o.eventNameToString,E={},w=v[f]=v[r],Z=v[d(a)]=v[a],S=v[d(c)]=v[c],D=v[d(p)]=v[p];let P;function C(e,t){return!L&&"object"==typeof e&&e?!!e.capture:L&&t?"boolean"==typeof e?{capture:e,passive:!0}:e?"object"==typeof e&&!1!==e.passive?Object.assign(Object.assign({},e),{passive:!0}):e:{passive:!0}:e}o&&o.prepend&&(P=v[d(o.prepend)]=v[o.prepend]);const O=s?function(e){if(!E.isExisting)return w.call(E.target,E.eventName,E.capture?m:k,E.options)}:function(e){return w.call(E.target,E.eventName,e.invoke,E.options)},z=s?function(e){if(!e.isRemoved){const t=H[e.eventName];let n;t&&(n=t[e.capture?l:u]);const o=n&&e.target[n];if(o)for(let r=0;r<o.length;r++)if(o[r]===e){o.splice(r,1),e.isRemoved=!0,0===o.length&&(e.allRemoved=!0,e.target[n]=null);break}}if(e.allRemoved)return Z.call(e.target,e.eventName,e.capture?m:k,e.options)}:function(e){return Z.call(e.target,e.eventName,e.invoke,e.options)},j=o&&o.diff?o.diff:function(e,t){const n=typeof t;return"function"===n&&e.callback===t||"object"===n&&e.originalDelegate===t},N=Zone[d("BLACK_LISTED_EVENTS")],R=e[d("PASSIVE_EVENTS")],x=function(t,n,r,a,c=!1,h=!1){return function(){const p=this||e;let f=arguments[0];o&&o.transferEventName&&(f=o.transferEventName(f));let d=arguments[1];if(!d)return t.apply(this,arguments);if(T&&"uncaughtException"===f)return t.apply(this,arguments);let g=!1;if("function"!=typeof d){if(!d.handleEvent)return t.apply(this,arguments);g=!0}if(i&&!i(t,d,p,arguments))return;const k=L&&!!R&&-1!==R.indexOf(f),m=C(arguments[2],k);if(N)for(let e=0;e<N.length;e++)if(f===N[e])return k?t.call(p,f,d,m):t.apply(this,arguments);const y=!!m&&("boolean"==typeof m||m.capture),v=!(!m||"object"!=typeof m)&&m.once,w=Zone.current;let Z=H[f];Z||(q(f,b),Z=H[f]);const S=Z[y?l:u];let D,P=p[S],O=!1;if(P){if(O=!0,_)for(let e=0;e<P.length;e++)if(j(P[e],d))return}else P=p[S]=[];const z=p.constructor.name,I=F[z];I&&(D=I[f]),D||(D=z+n+(b?b(f):f)),E.options=m,v&&(E.options.once=!1),E.target=p,E.capture=y,E.eventName=f,E.isExisting=O;const x=s?A:void 0;x&&(x.taskData=E);const M=w.scheduleEventTask(D,d,x,r,a);return E.target=null,x&&(x.taskData=null),v&&(m.once=!0),(L||"boolean"!=typeof M.options)&&(M.options=m),M.target=p,M.capture=y,M.eventName=f,g&&(M.originalDelegate=d),h?P.unshift(M):P.push(M),c?p:void 0}};return v[r]=x(w,g,O,z,y),P&&(v.prependListener=x(P,".prependListener:",(function(e){return P.call(E.target,E.eventName,e.invoke,E.options)}),z,y,!0)),v[a]=function(){const t=this||e;let n=arguments[0];o&&o.transferEventName&&(n=o.transferEventName(n));const r=arguments[2],s=!!r&&("boolean"==typeof r||r.capture),a=arguments[1];if(!a)return Z.apply(this,arguments);if(i&&!i(Z,a,t,arguments))return;const c=H[n];let p;c&&(p=c[s?l:u]);const f=p&&t[p];if(f)for(let e=0;e<f.length;e++){const o=f[e];if(j(o,a))return f.splice(e,1),o.isRemoved=!0,0===f.length&&(o.allRemoved=!0,t[p]=null,"string"==typeof n)&&(t[h+"ON_PROPERTY"+n]=null),o.zone.cancelTask(o),y?t:void 0}return Z.apply(this,arguments)},v[c]=function(){const t=this||e;let n=arguments[0];o&&o.transferEventName&&(n=o.transferEventName(n));const r=[],s=U(t,b?b(n):n);for(let e=0;e<s.length;e++){const t=s[e];r.push(t.originalDelegate?t.originalDelegate:t.callback)}return r},v[p]=function(){const t=this||e;let n=arguments[0];if(n){o&&o.transferEventName&&(n=o.transferEventName(n));const e=H[n];if(e){const o=t[e.false],r=t[e.true];if(o){const e=o.slice();for(let t=0;t<e.length;t++){const o=e[t];this[a].call(this,n,o.originalDelegate?o.originalDelegate:o.callback,o.options)}}if(r){const e=r.slice();for(let t=0;t<e.length;t++){const o=e[t];this[a].call(this,n,o.originalDelegate?o.originalDelegate:o.callback,o.options)}}}}else{const e=Object.keys(t);for(let t=0;t<e.length;t++){const n=G.exec(e[t]);let o=n&&n[1];o&&"removeListener"!==o&&this[p].call(this,o)}this[p].call(this,"removeListener")}if(y)return this},I(v[r],w),I(v[a],Z),D&&I(v[p],D),S&&I(v[c],S),!0}let v=[];for(let n=0;n<t.length;n++)v[n]=y(t[n],o);return v}function U(e,t){if(!t){const n=[];for(let o in e){const r=G.exec(o);let s=r&&r[1];if(s&&(!t||s===t)){const t=e[o];if(t)for(let e=0;e<t.length;e++)n.push(t[e])}}return n}let n=H[t];n||(q(t),n=H[t]);const o=e[n.false],r=e[n.true];return o?r?o.concat(r):o.slice():r?r.slice():[]}function V(e,t){const n=e.Event;n&&n.prototype&&t.patchMethod(n.prototype,"stopImmediatePropagation",e=>function(t,n){t[B]=!0,e&&e.apply(t,n)})}function $(e,t,n,o,r){const s=Zone.__symbol__(o);if(t[s])return;const i=t[s]=t[o];t[o]=function(s,a,c){return a&&a.prototype&&r.forEach((function(t){const r=`${n}.${o}::`+t,s=a.prototype;if(s.hasOwnProperty(t)){const n=e.ObjectGetOwnPropertyDescriptor(s,t);n&&n.value?(n.value=e.wrapWithCurrentZone(n.value,r),e._redefineProperty(a.prototype,t,n)):s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))}else s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))})),i.call(t,s,a,c)},e.attachOriginToPatched(t[o],i)}const X=["absolutedeviceorientation","afterinput","afterprint","appinstalled","beforeinstallprompt","beforeprint","beforeunload","devicelight","devicemotion","deviceorientation","deviceorientationabsolute","deviceproximity","hashchange","languagechange","message","mozbeforepaint","offline","online","paint","pageshow","pagehide","popstate","rejectionhandled","storage","unhandledrejection","unload","userproximity","vrdisplayconnected","vrdisplaydisconnected","vrdisplaypresentchange"],J=["encrypted","waitingforkey","msneedkey","mozinterruptbegin","mozinterruptend"],Y=["load"],K=["blur","error","focus","load","resize","scroll","messageerror"],Q=["bounce","finish","start"],ee=["loadstart","progress","abort","error","load","progress","timeout","loadend","readystatechange"],te=["upgradeneeded","complete","abort","success","error","blocked","versionchange","close"],ne=["close","error","open","message"],oe=["error","message"],re=["abort","animationcancel","animationend","animationiteration","auxclick","beforeinput","blur","cancel","canplay","canplaythrough","change","compositionstart","compositionupdate","compositionend","cuechange","click","close","contextmenu","curechange","dblclick","drag","dragend","dragenter","dragexit","dragleave","dragover","drop","durationchange","emptied","ended","error","focus","focusin","focusout","gotpointercapture","input","invalid","keydown","keypress","keyup","load","loadstart","loadeddata","loadedmetadata","lostpointercapture","mousedown","mouseenter","mouseleave","mousemove","mouseout","mouseover","mouseup","mousewheel","orientationchange","pause","play","playing","pointercancel","pointerdown","pointerenter","pointerleave","pointerlockchange","mozpointerlockchange","webkitpointerlockerchange","pointerlockerror","mozpointerlockerror","webkitpointerlockerror","pointermove","pointout","pointerover","pointerup","progress","ratechange","reset","resize","scroll","seeked","seeking","select","selectionchange","selectstart","show","sort","stalled","submit","suspend","timeupdate","volumechange","touchcancel","touchmove","touchstart","touchend","transitioncancel","transitionend","waiting","wheel"].concat(["webglcontextrestored","webglcontextlost","webglcontextcreationerror"],["autocomplete","autocompleteerror"],["toggle"],["afterscriptexecute","beforescriptexecute","DOMContentLoaded","freeze","fullscreenchange","mozfullscreenchange","webkitfullscreenchange","msfullscreenchange","fullscreenerror","mozfullscreenerror","webkitfullscreenerror","msfullscreenerror","readystatechange","visibilitychange","resume"],X,["beforecopy","beforecut","beforepaste","copy","cut","paste","dragstart","loadend","animationstart","search","transitionrun","transitionstart","webkitanimationend","webkitanimationiteration","webkitanimationstart","webkittransitionend"],["activate","afterupdate","ariarequest","beforeactivate","beforedeactivate","beforeeditfocus","beforeupdate","cellchange","controlselect","dataavailable","datasetchanged","datasetcomplete","errorupdate","filterchange","layoutcomplete","losecapture","move","moveend","movestart","propertychange","resizeend","resizestart","rowenter","rowexit","rowsdelete","rowsinserted","command","compassneedscalibration","deactivate","help","mscontentzoom","msmanipulationstatechanged","msgesturechange","msgesturedoubletap","msgestureend","msgesturehold","msgesturestart","msgesturetap","msgotpointercapture","msinertiastart","mslostpointercapture","mspointercancel","mspointerdown","mspointerenter","mspointerhover","mspointerleave","mspointermove","mspointerout","mspointerover","mspointerup","pointerout","mssitemodejumplistitemremoved","msthumbnailclick","stop","storagecommit"]);function se(e,t,n){if(!n||0===n.length)return t;const o=n.filter(t=>t.target===e);if(!o||0===o.length)return t;const r=o[0].ignoreProperties;return t.filter(e=>-1===r.indexOf(e))}function ie(e,t,n,o){e&&P(e,se(e,t,n),o)}function ae(e,t){if(T&&!w)return;if(Zone[e.symbol("patchEvents")])return;const o="undefined"!=typeof WebSocket,r=t.__Zone_ignore_on_properties;if(E){const e=window,t=x?[{target:e,ignoreProperties:["error"]}]:[];ie(e,re.concat(["messageerror"]),r?r.concat(t):r,n(e)),ie(Document.prototype,re,r),void 0!==e.SVGElement&&ie(e.SVGElement.prototype,re,r),ie(Element.prototype,re,r),ie(HTMLElement.prototype,re,r),ie(HTMLMediaElement.prototype,J,r),ie(HTMLFrameSetElement.prototype,X.concat(K),r),ie(HTMLBodyElement.prototype,X.concat(K),r),ie(HTMLFrameElement.prototype,Y,r),ie(HTMLIFrameElement.prototype,Y,r);const o=e.HTMLMarqueeElement;o&&ie(o.prototype,Q,r);const s=e.Worker;s&&ie(s.prototype,oe,r)}const s=t.XMLHttpRequest;s&&ie(s.prototype,ee,r);const i=t.XMLHttpRequestEventTarget;i&&ie(i&&i.prototype,ee,r),"undefined"!=typeof IDBIndex&&(ie(IDBIndex.prototype,te,r),ie(IDBRequest.prototype,te,r),ie(IDBOpenDBRequest.prototype,te,r),ie(IDBDatabase.prototype,te,r),ie(IDBTransaction.prototype,te,r),ie(IDBCursor.prototype,te,r)),o&&ie(WebSocket.prototype,ne,r)}Zone.__load_patch("util",(n,a,c)=>{c.patchOnProperties=P,c.patchMethod=z,c.bindArguments=y,c.patchMacroTask=j;const f=a.__symbol__("BLACK_LISTED_EVENTS"),d=a.__symbol__("UNPATCHED_EVENTS");n[d]&&(n[f]=n[d]),n[f]&&(a[f]=a[d]=n[f]),c.patchEventPrototype=V,c.patchEventTarget=W,c.isIEOrEdge=M,c.ObjectDefineProperty=t,c.ObjectGetOwnPropertyDescriptor=e,c.ObjectCreate=o,c.ArraySlice=r,c.patchClass=O,c.wrapWithCurrentZone=p,c.filterProperties=se,c.attachOriginToPatched=I,c._redefineProperty=Object.defineProperty,c.patchCallbacks=$,c.getGlobalObjects=()=>({globalSources:F,zoneSymbolEventNames:H,eventNames:re,isBrowser:E,isMix:w,isNode:T,TRUE_STR:l,FALSE_STR:u,ZONE_SYMBOL_PREFIX:h,ADD_EVENT_LISTENER_STR:s,REMOVE_EVENT_LISTENER_STR:i})});const ce=d("zoneTask");function le(e,t,n,o){let r=null,s=null;n+=o;const i={};function a(t){const n=t.data;return n.args[0]=function(){try{t.invoke.apply(this,arguments)}finally{t.data&&t.data.isPeriodic||("number"==typeof n.handleId?delete i[n.handleId]:n.handleId&&(n.handleId[ce]=null))}},n.handleId=r.apply(e,n.args),t}function c(e){return s(e.data.handleId)}r=z(e,t+=o,n=>function(r,s){if("function"==typeof s[0]){const e=f(t,s[0],{isPeriodic:"Interval"===o,delay:"Timeout"===o||"Interval"===o?s[1]||0:void 0,args:s},a,c);if(!e)return e;const n=e.data.handleId;return"number"==typeof n?i[n]=e:n&&(n[ce]=e),n&&n.ref&&n.unref&&"function"==typeof n.ref&&"function"==typeof n.unref&&(e.ref=n.ref.bind(n),e.unref=n.unref.bind(n)),"number"==typeof n||n?n:e}return n.apply(e,s)}),s=z(e,n,t=>function(n,o){const r=o[0];let s;"number"==typeof r?s=i[r]:(s=r&&r[ce],s||(s=r)),s&&"string"==typeof s.type?"notScheduled"!==s.state&&(s.cancelFn&&s.data.isPeriodic||0===s.runCount)&&("number"==typeof r?delete i[r]:r&&(r[ce]=null),s.zone.cancelTask(s)):t.apply(e,o)})}function ue(e,t){if(Zone[t.symbol("patchEventTarget")])return;const{eventNames:n,zoneSymbolEventNames:o,TRUE_STR:r,FALSE_STR:s,ZONE_SYMBOL_PREFIX:i}=t.getGlobalObjects();for(let c=0;c<n.length;c++){const e=n[c],t=i+(e+s),a=i+(e+r);o[e]={},o[e][s]=t,o[e][r]=a}const a=e.EventTarget;return a&&a.prototype?(t.patchEventTarget(e,[a&&a.prototype]),!0):void 0}Zone.__load_patch("legacy",e=>{const t=e[Zone.__symbol__("legacyPatch")];t&&t()}),Zone.__load_patch("timers",e=>{const t="set",n="clear";le(e,t,n,"Timeout"),le(e,t,n,"Interval"),le(e,t,n,"Immediate")}),Zone.__load_patch("requestAnimationFrame",e=>{le(e,"request","cancel","AnimationFrame"),le(e,"mozRequest","mozCancel","AnimationFrame"),le(e,"webkitRequest","webkitCancel","AnimationFrame")}),Zone.__load_patch("blocking",(e,t)=>{const n=["alert","prompt","confirm"];for(let o=0;o<n.length;o++)z(e,n[o],(n,o,r)=>function(o,s){return t.current.run(n,e,s,r)})}),Zone.__load_patch("EventTarget",(e,t,n)=>{(function(e,t){t.patchEventPrototype(e,t)})(e,n),ue(e,n);const o=e.XMLHttpRequestEventTarget;o&&o.prototype&&n.patchEventTarget(e,[o.prototype]),O("MutationObserver"),O("WebKitMutationObserver"),O("IntersectionObserver"),O("FileReader")}),Zone.__load_patch("on_property",(e,t,n)=>{ae(n,e)}),Zone.__load_patch("customElements",(e,t,n)=>{!function(e,t){const{isBrowser:n,isMix:o}=t.getGlobalObjects();(n||o)&&e.customElements&&"customElements"in e&&t.patchCallbacks(t,e.customElements,"customElements","define",["connectedCallback","disconnectedCallback","adoptedCallback","attributeChangedCallback"])}(e,n)}),Zone.__load_patch("XHR",(e,t)=>{!function(e){const u=e.XMLHttpRequest;if(!u)return;const h=u.prototype;let p=h[a],g=h[c];if(!p){const t=e.XMLHttpRequestEventTarget;if(t){const e=t.prototype;p=e[a],g=e[c]}}const _="readystatechange",k="scheduled";function m(e){const o=e.data,i=o.target;i[s]=!1,i[l]=!1;const u=i[r];p||(p=i[a],g=i[c]),u&&g.call(i,_,u);const h=i[r]=()=>{if(i.readyState===i.DONE)if(!o.aborted&&i[s]&&e.state===k){const n=i[t.__symbol__("loadfalse")];if(n&&n.length>0){const r=e.invoke;e.invoke=function(){const n=i[t.__symbol__("loadfalse")];for(let t=0;t<n.length;t++)n[t]===e&&n.splice(t,1);o.aborted||e.state!==k||r.call(e)},n.push(e)}else e.invoke()}else o.aborted||!1!==i[s]||(i[l]=!0)};return p.call(i,_,h),i[n]||(i[n]=e),w.apply(i,o.args),i[s]=!0,e}function y(){}function v(e){const t=e.data;return t.aborted=!0,Z.apply(t.target,t.args)}const b=z(h,"open",()=>function(e,t){return e[o]=0==t[2],e[i]=t[1],b.apply(e,t)}),T=d("fetchTaskAborting"),E=d("fetchTaskScheduling"),w=z(h,"send",()=>function(e,n){if(!0===t.current[E])return w.apply(e,n);if(e[o])return w.apply(e,n);{const t={target:e,url:e[i],isPeriodic:!1,args:n,aborted:!1},o=f("XMLHttpRequest.send",y,t,m,v);e&&!0===e[l]&&!t.aborted&&o.state===k&&o.invoke()}}),Z=z(h,"abort",()=>function(e,o){const r=e[n];if(r&&"string"==typeof r.type){if(null==r.cancelFn||r.data&&r.data.aborted)return;r.zone.cancelTask(r)}else if(!0===t.current[T])return Z.apply(e,o)})}(e);const n=d("xhrTask"),o=d("xhrSync"),r=d("xhrListener"),s=d("xhrScheduled"),i=d("xhrURL"),l=d("xhrErrorBeforeScheduled")}),Zone.__load_patch("geolocation",t=>{t.navigator&&t.navigator.geolocation&&function(t,n){const o=t.constructor.name;for(let r=0;r<n.length;r++){const s=n[r],i=t[s];if(i){if(!v(e(t,s)))continue;t[s]=(e=>{const t=function(){return e.apply(this,y(arguments,o+"."+s))};return I(t,e),t})(i)}}}(t.navigator.geolocation,["getCurrentPosition","watchPosition"])}),Zone.__load_patch("PromiseRejectionEvent",(e,t)=>{function n(t){return function(n){U(e,t).forEach(o=>{const r=e.PromiseRejectionEvent;if(r){const e=new r(t,{promise:n.promise,reason:n.rejection});o.invoke(e)}})}}e.PromiseRejectionEvent&&(t[d("unhandledPromiseRejectionHandler")]=n("unhandledrejection"),t[d("rejectionHandledHandler")]=n("rejectionhandled"))})})?o.call(t,n,t,e):o)||(e.exports=r)}},[[1,0]]]);</p><p></p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [http://localhost:8080/robots.txt](http://localhost:8080/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime.acf0dec4155e77772545.js" defer></script>`
  
  
  
  
* URL: [http://localhost:8080/sitemap.xml](http://localhost:8080/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime.acf0dec4155e77772545.js" defer></script>`
  
  
  
  
* URL: [http://localhost:8080](http://localhost:8080)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime.acf0dec4155e77772545.js" defer></script>`
  
  
  
  
* URL: [http://localhost:8080/](http://localhost:8080/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime.acf0dec4155e77772545.js" defer></script>`
  
  
  
  
Instances: 4
  
### Solution
<p>This is an informational alert and so no changes are required.</p>
  
### Other information
<p>No links have been found while there are scripts, which is an indication that this is a modern web application.</p>
  
### Reference
* 

  
#### Source ID : 3

  
  
  
### Timestamp Disclosure - Unix
##### Informational (Low)
  
  
  
  
#### Description
<p>A timestamp was disclosed by the application/web server - Unix</p>
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `150054599`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1521486534`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `604807628`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1359893119`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `883997877`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `2024104815`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16711680`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `666307205`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `659060556`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1294757372`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1249150122`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `773529912`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1426881987`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1899447441`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1750603025`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1925078388`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1747873779`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1555081692`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `812702999`
  
  
  
  
* URL: [http://localhost:8080/main.7de1870ba82f2de2bce1.js](http://localhost:8080/main.7de1870ba82f2de2bce1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `958139571`
  
  
  
  
Instances: 51
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>150054599, which evaluates to: 1974-10-03 17:49:59</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
### User Agent Fuzzer
##### Informational (Medium)
  
  
  
  
#### Description
<p>Check for differences in response based on fuzzed User Agent (eg. mobile sites, access as a Search Engine Crawler). Compares the response statuscode and the hashcode of the response body with the original response.</p>
  
  
  
* URL: [http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c/triesLeft](http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c/triesLeft)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `POST`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16`
  
  
  
  
* URL: [http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333](http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c](http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c/participants](http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c/participants)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/triesLeft](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/triesLeft)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333](http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `msnbot/1.1 (+http://search.msn.com/msnbot.htm)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `POST`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16`
  
  
  
  
* URL: [http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution](http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `POST`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution](http://localhost:8080/api/exams/a5ec80c2-c2c4-4bf3-b4ed-219ded179ed4/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/participants](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/participants)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333](http://localhost:8080/api/exams/be9b28a2-2db7-424d-b1bc-c43fca76b333)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/solution](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/solution](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/solution)
  
  
  * Method: `POST`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c/triesLeft](http://localhost:8080/api/exams/c46d6deb-2b96-4b66-b007-4057c1c01f5c/triesLeft)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)`
  
  
  
  
* URL: [http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/participants](http://localhost:8080/api/exams/070bb3c9-06bf-4e62-bdce-bc5faf88779a/participants)
  
  
  * Method: `GET`
  
  
  * Parameter: `Header User-Agent`
  
  
  * Attack: `Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16`
  
  
  
  
Instances: 77
  
### Solution
<p></p>
  
### Reference
* https://owasp.org/wstg

  
#### Source ID : 1
