#!/usr/bin/env python
# Finish ZAP scan

import sys
from zapv2 import ZAPv2
from zap_common import *

#Configuration
zap_ip = 'localhost'
port = 12345
passiveScanTimeoutInMin=1
target='http://localhost:8080'
report_dir='/out/'

def main(argv):
  #Initialize Zap API
  http_proxy = 'http://' + zap_ip + ':' + str(port)
  https_proxy = 'http://' + zap_ip + ':' + str(port)
  zap = ZAPv2(proxies={'http': http_proxy, 'https': https_proxy})

  #Perform the active scan and wait for passive scans
  scan_policy = 'Default Policy'
  zap_active_scan(zap, target, scan_policy)
  zap_wait_for_passive_scan(zap, passiveScanTimeoutInMin * 60)

  #Generate an url report
  urls = zap.core.urls()
  separator = '\n'
  url_report=separator.join(urls)
  url_report+='\n'+'Total of ' + str(len(urls)) + ' URLs'

  #Generate reports
  write_report(report_dir + 'selenium.md', zap.core.mdreport())
  write_report(report_dir + 'urls_selenium.json', url_report)

  #Shutdown ZAP
  zap.core.shutdown()

if __name__ == "__main__":
    main(sys.argv[1:])

