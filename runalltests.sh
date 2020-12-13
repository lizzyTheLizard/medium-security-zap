#!/bin/bash

rm output/*

# Simple baseline test
# See https://www.zaproxy.org/docs/docker/baseline-scan/
#
# This script spiders the application. However, as the application required authentication, 
# this test will not provide to much inside.
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-baseline.py \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -j `#Include AJAX spider` \
    -t http://localhost:8080 \
    -w output/baseline.md \

# Report URLs
#
# Same as baseline scan, just added an additional report
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-baseline.py \
    --hook=/zap/wrk/print-url-hook.py `#Generate additonal URL report` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -j `#Include AJAX spider` \
    -t http://localhost:8080 \
    -w output/baseline.md

# API-Scan
# See https://www.zaproxy.org/docs/docker/api-scan/
#
# Checks the openAPI-Configuration instead of spidering, does not do any active scan
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-api-scan.py \
    --hook=/zap/wrk/print-url-hook.py `#Generate additonal URL report` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -S `#Skip active scan for now`\
    -f openapi \
    -t http://localhost:8080/swagger/docs/ \
    -w output/openapi.md

# API-Scan with authentication
# See https://www.zaproxy.org/docs/docker/api-scan/
#
# Same as above, just with authentication
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-api-scan.py \
    --hook=/zap/wrk/authentication-hooks.py `#Include hooks for authentication` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -S `#Skip active scan for now`\
    -f openapi \
    -t http://localhost:8080/swagger/docs/ \
    -w output/openapi_auth.md

# API-Scan with active
# See https://www.zaproxy.org/docs/docker/api-scan/
#
# Checks the openAPI-Configuration instead of spidering, and performs an active scan
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-api-scan.py \
    --hook=/zap/wrk/authentication-hooks.py `#Incluse hooks for authentication` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -f openapi \
    -t http://localhost:8080/swagger/docs/ \
    -w output/openapi_full.md

# Use selenium tests
# Custom created scipts start.py and end.py
# In between the selenium tests have to be run
docker run --rm --name zap_selenium \
  --network="host" \
  -v $(pwd)/start.py:/zap/start.py:rw \
  -v $(pwd)/end.py:/zap/end.py:rw \
  -v $(pwd)/output:/out:rw \
  -d \
  owasp/zap2docker-weekly \
  zap-x.sh \
    -daemon \
    -port 12345 \
    -host 0.0.0.0 \
    -config api.disablekey=true \
    -config api.addrs.addr.name=.* \
    -config api.addrs.addr.regex=true \
    -config spider.maxDuration=2 \
    -config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$' \
    -addonupdate \
    -addoninstall pscanrulesBeta

#Setup ZAP for e2e tests
docker exec zap_selenium /zap/start.py

#Run e2e tests
pushd ../medium-java-example-exams/medium-java-exams-e2e/
../mvnw verify -DargLine="-Dzap_proxy=12345"
popd

#Finish e2e tests
docker exec zap_selenium /zap/end.py
