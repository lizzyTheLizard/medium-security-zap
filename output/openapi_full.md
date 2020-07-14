
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
| Unexpected Content-Type was returned | Low | 11 | 
| A Client Error response code was returned by the server | Informational | 22 | 
| Timestamp Disclosure - Unix | Informational | 1 | 

## Alert Detail


  
  
  
### Unexpected Content-Type was returned
##### Low (High)
  
  
  
  
#### Description
<p>A Content-Type of text/html was returned by the server.</p><p>This is not one of the types expected to be returned by an API.</p><p>Raised by the 'Alert on Unexpected Content Types' script</p>
  
  
  
* URL: [http://localhost:8080/](http://localhost:8080/)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/swagger/1033867041850797418](http://localhost:8080/swagger/1033867041850797418)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/5085130803446017351](http://localhost:8080/api/exams/examId/5085130803446017351)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/4772583987503436138](http://localhost:8080/4772583987503436138)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/swagger](http://localhost:8080/swagger)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080](http://localhost:8080)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/api](http://localhost:8080/api)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/elmah.axd](http://localhost:8080/elmah.axd)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/api/](http://localhost:8080/api/)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/api/6443480110810663177](http://localhost:8080/api/6443480110810663177)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
* URL: [http://localhost:8080/swagger/](http://localhost:8080/swagger/)
  
  
  * Method: `GET`
  
  
  * Evidence: `text/html`
  
  
  
  
Instances: 11
  
### Solution
<p></p>
  
### Reference
* 

  
#### Source ID : 4

  
  
  
### A Client Error response code was returned by the server
##### Informational (High)
  
  
  
  
#### Description
<p>A response code of 404 was returned by the server.</p><p>This may indicate that the application is failing to handle unexpected input correctly.</p><p>Raised by the 'Alert on HTTP Response Code Error' script</p>
  
  
  
* URL: [http://localhost:8080/api](http://localhost:8080/api)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/6443480110810663177](http://localhost:8080/api/6443480110810663177)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId](http://localhost:8080/api/exams/examId)
  
  
  * Method: `DELETE`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/](http://localhost:8080/api/)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/participants/](http://localhost:8080/api/exams/examId/participants/)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/](http://localhost:8080/api/exams/examId/)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/](http://localhost:8080/api/exams/examId/)
  
  
  * Method: `DELETE`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/swagger/](http://localhost:8080/swagger/)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/triesLeft](http://localhost:8080/api/exams/examId/triesLeft)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/elmah.axd](http://localhost:8080/elmah.axd)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/swagger/1033867041850797418](http://localhost:8080/swagger/1033867041850797418)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/api/exams/1494384277491176634](http://localhost:8080/api/exams/1494384277491176634)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams](http://localhost:8080/api/exams)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/5085130803446017351](http://localhost:8080/api/exams/examId/5085130803446017351)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/solution/](http://localhost:8080/api/exams/examId/solution/)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/4772583987503436138](http://localhost:8080/4772583987503436138)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 404`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/solution](http://localhost:8080/api/exams/examId/solution)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/examId/triesLeft/](http://localhost:8080/api/exams/examId/triesLeft/)
  
  
  * Method: `GET`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
* URL: [http://localhost:8080/api/exams/](http://localhost:8080/api/exams/)
  
  
  * Method: `POST`
  
  
  * Evidence: `HTTP/1.1 400`
  
  
  
  
Instances: 22
  
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
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
