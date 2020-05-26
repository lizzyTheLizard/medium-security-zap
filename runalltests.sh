#!/bin/bash

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
    -j `#Include AJAX spider` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -t http://localhost:8080 \
    -w output/baseline.md \
    -r output/baseline.html

# Baseline test with authentication
# See https://www.zaproxy.org/docs/docker/baseline-scan/
#
# Same as above, just with authentication
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-baseline.py \
    -j `#Include AJAX spider` \
    --hook=/zap/wrk/authentication-hooks.py `#Include hooks for authentication` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -t http://localhost:8080 \
    -w output/baseline_auth.md \
    -r output/baseline_auth.html

# API-Scan
# See https://www.zaproxy.org/docs/docker/api-scan/
#
# Checks the openAPI-Configuration instead of spidering, does not do any active scan
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-api-scan.py \
    -f openapi \
    --hook=/zap/wrk/authentication-hooks.py `#Include hooks for authentication` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -t http://localhost:8080/swagger/docs/ \
    -S `#Skip active scan for now`\
    -w output/oppenapi.md \
    -r output/openapi.html

# API-Scan with active
# See https://www.zaproxy.org/docs/docker/api-scan/
#
# Checks the openAPI-Configuration instead of spidering, and performs an active scan
docker run --rm \
  -v $(pwd):/zap/wrk:rw \
  --network=host `#Needed as we run against localhost` \
  owasp/zap2docker-weekly \
  zap-api-scan.py \
    -f openapi \
    -j `#Include AJAX spider` \
    --hook=/zap/wrk/authentication-hooks.py `#Incluse hooks for authentication` \
    -z "-config globalexcludeurl.url_list.url.regex='^http:\/\/localhost:9080\/.*$'" `#Exclude the auth server` \
    -t http://localhost:8080/swagger/docs/ \
    -w output/openapi_full.md \
    -r output/openapi_full.html

