#!/bin/bash
#
# Monitoring process httpd
#
COUNTER=0
while ps aux | grep httpd | grep -v grep > /dev/null
do
	COUNTER=$((COUNTER+1))
	sleep 1
	echo COUNTER is $COUNTER
done

logger HTTPMONITOR: httpd stopped at `date`
/etc/init.d/apache2 start
mail -s Apache was stopped and restarted linux@0wnd.nl < . 
