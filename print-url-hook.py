import logging

def zap_pre_shutdown(zap):
	with open('/zap/wrk/output/urls.txt', mode='wb' ) as f:
		for url in zap.core.urls():
			f.write(str(url) + '\n');

