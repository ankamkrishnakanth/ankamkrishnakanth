#!/bin/bash
value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)
if [ $value -eq 1 ]
then
	echo "1 active interface found"
elif [ $value -gt 1 ]
then 
	echo "found multiple interfaces"
else
	echo "no active interface found"
fi

