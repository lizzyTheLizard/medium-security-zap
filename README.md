# medium-security-zap 
Security tests for medium-java-example-exams

## Installing / Getting started
First you need to start medium-java-example-exams. Therefore checkout
https://github.com/lizzyTheLizard/medium-java-example-exams.git and start
it using

docker-compose -f src/test/docker/docker-compose.yml up

Then you can execute one of those tests

### Simple baseline test
This test will use the standard baseline script, see https://github.com/zaproxy/zaproxy/wiki/ZAP-Baseline-Scan
This script spiders the application. However, as the application required authentication,
this test will not provide to much inside

```
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-baseline.py \
    -j `#Include AJAX spider` \
    -c zap_config `#Exclude some rules we are not interested in` \
    -z "-config globalexcludeurl.url_list.url.regex='^https:\/\/localhost\/auth.*$'" `#Exclude the auth server as we do not want to check it` \
    -t https://localhost
```
### Baseline tests with authentication
Authentication can be added by using an scan hook,
see also https://github.com/zaproxy/zaproxy/blob/develop/docker/docs/scan-hooks.md

```
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-baseline.py \
    -j `#Include AJAX spider` \
    --hook=/zap/wrk/authentication-hooks.py `#Incluse hooks for authentication` \
    -c zap_config `#Include config file with rules` \
    -z "-config globalexcludeurl.url_list.url.regex='^https:\/\/localhost\/auth.*$'" `#Exclude the auth server as we do not want to check it` \
    -t https://localhost `#The actual target`
```

### Full scan
Beside the spidering, the full scan script also performs an active scan,
see https://github.com/zaproxy/zaproxy/wiki/ZAP-Full-Scan

```
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-full-scan.py \
    -j `#Include AJAX spider` \
    --hook=/zap/wrk/authentication-hooks.py `#Incluse hooks for authentication` \
    -c zap_config `#Include config file with rules` \
    -z "-config globalexcludeurl.url_list.url.regex='^https:\/\/localhost\/auth.*$'" `#Exclude the auth server as we do not want to check it` \
    -t https://localhost `#The actual target`
```

### OpenAPI-Test
Instead of spidering, the api-scan uses an open-api specification and performs an active scan
against the defined endpoints,
see https://github.com/zaproxy/zaproxy/wiki/ZAP-API-Scan

```
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-api-scan.py \
    -j `#Include AJAX spider` \
    --hook=/zap/wrk/authentication-hooks.py `#Incluse hooks for authentication` \
    -c zap_config `#Include config file with rules` \
    -z "-config globalexcludeurl.url_list.url.regex='^https:\/\/localhost\/auth.*$'" `#Exclude the auth server as we do not want to check it` \
    -t https://localhost/api/swagger/docs `#The openapi doc`
```
### Customized test script
TODO

