#!/bin/bash
echo "checking connections on all the machines from webnodeIP.txt"
for IP in $(cat webnodeIP.txt)
do
	ssh devops@$IP hostname
	if [ $? -eq 0 ]
	then
		echo "$IP is connected over ssh"
		echo "#########################"
	else
	        echo "$IP is not connected over ssh"
	fi
done	
