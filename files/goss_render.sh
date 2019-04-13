#!/bin/sh
echo 'gossfile:' > "/root/goss.yaml"
ls -1 /root/*.yml|sed 's/^/  /;s/$/: {}/' >> "/root/goss.yaml"
goss -g "/root/goss.yaml" render > /dev/null
