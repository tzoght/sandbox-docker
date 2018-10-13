#!/bin/bash 
/opt/sensu/bin/sensu-client -c /etc/sensu/config.json -d /etc/sensu/conf.d -e /etc/sensu/extensions -p /var/run/sensu/sensu-client.pid -l /var/log/sensu/sensu-client.log -L info
# while true; do sleep 1000; done


