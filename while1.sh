#!/bin/bash
c=1
while [ $c -le 5 ]
do
	echo "value of c is $c"
	c=$(( $c + 1 ))
done
