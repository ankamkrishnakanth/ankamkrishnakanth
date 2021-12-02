#!/bin/bash

if [[ -n $1 ]] && [[ -d $1 ]]
then
	echo "you have entered a dir path, taking its backup"
	tar -cvzf backipdir.tgz $1
elif [[ -n $1 ]] && [[ -e $1 ]]
then
        echo "you have entered a file path, taking its backup"
	tar -czvf backupfile.tgz $1
elif [[ -z $1 ]]
then	
        echo "you have not entered any input"
else
	echo "entered invalid input, please try again"
fi

