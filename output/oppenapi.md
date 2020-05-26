
# ZAP Scanning Report




## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 0 |
| Low | 0 |
| Informational | 2 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| A Client Error response code was returned by the server | Informational | 6 | 
| Timestamp Disclosure - Unix | Informational | 1 | 

## Alert Detail


  
  
  
### A Client Error response code was returned by the server
##### Informational (High)
  
  
  
  
#### Description
<p>A response code of 400 was returned by the server.</p><p>This may indicate that the application is failing to handle unexpected input correctly.</p><p>Raised by the 'Alert on HTTP Response Code Error' script</p>
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams](http://localhost:8080/api/exams)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/solution](http://localhost:8080/api/exams/examId/solution)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/triesLeft](http://localhost:8080/api/exams/examId/triesLeft)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `DELETE`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/participants](http://localhost:8080/api/exams/examId/participants)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
Instances: 6
  
### Solution
<p></p>
  
### Reference
* 

  
#### CWE Id : 388
  
#### WASC Id : 20
  
#### Source ID : 4

  
  
  
### Timestamp Disclosure - Unix
##### Informational (Low)
  
  
  
  
#### Description
<p>A timestamp was disclosed by the application/web server - Unix</p>
  
  
  
* URL: [http://localhost:8080/api/exams](http://localhost:8080/api/exams)
  
  
  * Method: `GET`
  
  
  * Evidence: `61383424`
  
  
  
  
Instances: 1
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>61383424, which evaluates to: 1971-12-12 10:57:04</p>
  
### Reference
* https://www.owasp.org/index.php/Top_10_2013-A6-Sensitive_Data_Exposure
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
