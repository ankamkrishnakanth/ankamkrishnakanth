#!/bin/bash
read -p "Enter command to exec on remote machine: " COMMAND
echo "Executing $COMMAND on all webnodes"
for IP in $(cat webnodeIP.txt);
do
	echo "##########################"
	echo "Executing $COMMAND on $IP"
	ssh devops@$IP "$COMMAND; uptime; free -m; w"
done
