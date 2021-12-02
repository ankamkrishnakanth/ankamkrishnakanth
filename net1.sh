#!/bin/bash
value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)
if [ $value -ge 1 ]
then
    if [ $value -eq 1 ]
    then
	echo "1 active interface found"
    elif [ $value -gt 1 ]
    then 
	echo "found multiple interfaces"
    fi
fi

