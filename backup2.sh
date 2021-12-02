#!/bin/bash

echo "welcome user $USER"
echo "we are running scripts on $HOSTNAME"
echo 
echo "you have passed $# arguments"
echo "###############################"
echo
echo "Below mentioned are the arguments that you have passed: "
echo $@
echo "###################################"





BAKUPFILE=scripts_bakup.tar.gz
echo "taking backup of $1"

echo "archiving $1"
tar -czvf $BAKUPFILE $1
echo "exit code of archiving is $?"
echo "########################"
mv $BAKUPFILE $2
echo "exit code of moving backup is $?"
echo "###################################"

echo "archive moved to $2"
echo "Process ID of the current script is $$"
echo "#####################################"
echo "backup completed succesfully"

sleep 5
echo "it took $SECONDS seconds time"
