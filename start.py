#!/usr/bin/env python
# Spider and start listening for passive requests

import sys
from zapv2 import ZAPv2
from zap_common import *

#Configuration
zap_ip = 'localhost'
port = 12345
spiderTimeoutInMin = 2
startupTimeoutInMin=1
target='http://localhost:8080'

def main(argv):
  #Initialize Zap API
  http_proxy = 'http://' + zap_ip + ':' + str(port)
  https_proxy = 'http://' + zap_ip + ':' + str(port)
  zap = ZAPv2(proxies={'http': http_proxy, 'https': https_proxy})

  #Check untill zap is running
  wait_for_zap_start(zap, startupTimeoutInMin*60)

  #Check that target is reachable
  zap_access_target(zap, target)

  # Use both spider
  zap_spider(zap, target)
  zap_ajax_spider(zap, target, spiderTimeoutInMin)

if __name__ == "__main__":
    main(sys.argv[1:])

