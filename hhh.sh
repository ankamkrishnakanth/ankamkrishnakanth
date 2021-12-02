#!/bin/bash
if [[ -e /root/num.sh ]]
then
	tar -czvf numbackup.tgz /root/num.sh
	if [[ $? -eq 0 ]]
	then
		echo "backup successful"
	fi
fi
