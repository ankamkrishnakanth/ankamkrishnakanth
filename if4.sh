#!/bin/bash
#Learning decision making


#check if argument is supplied
if [ -z $1 ]
then
	echo "you have not entered any argument"
#if argument is supplied, validate the argument	
else
#if path is a directory	
    if [ -d $1 ]
     then
	     echo "file exists and is a directory"
#if path is a file    
     elif [ -e $1 ]
    then
           echo "Regular file detected"
#if invalid input is supplied   
   else
	   echo "please enter a file path"
    fi
fi    
 	    
