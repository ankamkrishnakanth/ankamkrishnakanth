#!/bin/bash
BAKUPFILE=scripts_bakup.tar.gz
echo "taking backup of $1"

echo "archiving $1"
tar -czvf $BAKUPFILE $1
mv $BAKUPFILE $2
echo "archive moved to $2"
echo "backup completed succesfully"
