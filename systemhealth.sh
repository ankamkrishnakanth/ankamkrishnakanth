#!/bin/bash
echo "welcome $USER on $HOSTNAME"
echo "##############################"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/xvda1' | awk '{print $4}')

echo "####################################"
echo "available free ram is $FREERAM MB"
echo "####################################"
echo "current Avg load is $LOAD"
echo "####################################"
echo "Free ROOT Partition size is $ROOTFREE"


