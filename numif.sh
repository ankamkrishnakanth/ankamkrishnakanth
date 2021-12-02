#!/bin/bash
read -p "Enter a number: " NUM
echo 
echo "You have entered $NUM"

if [ $NUM -gt 100 ]
then
	echo " We entered in IF block"
        sleep 5
	echo "your number is greater than 100"
	echo 
	date
else
	echo "You have entered num lessthan 100"
fi

echo "out of IF block"
echo "Script execution completed succesfully"
