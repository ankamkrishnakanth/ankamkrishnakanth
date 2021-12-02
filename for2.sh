#!/bin/bash

# Looping over 1 2 3 4 5
echo "##############################################"
echo "Looping over 1 2 3 4 5"
echo "##############################################"
for i in 1 2 3 4 5
#for i in {1..5}
#for i in $(seq 1 5)
#for (( i=1; i<=5; i++ ))

do
	echo "welcome $i times"
done
echo "script exec completed"
