#!/bin/bash
#Read -p "Enter command to exec on remote machine: " COMMAND
echo "Executing COMMANDS on all webnodes"
for IP in $(cat webnodeIP.txt);
do
	echo "##########################"
	echo "Executing COMMANDS on $IP"
	ssh devops@$IP '
	echo "executing free -m"
	free -m
	echo "executing uptime"
	uptime
	echo "executing df -h"
	df -h
        echo
	'
done
