#!/bin/bash
: ' this script will set sloopa website on
CENTOS 7.5'


# Declaring variables
#SVC=httpd
#WEBURL=https://www.tooplate.com/zip-templates/2108_dashboard.zip
#PACKS=$SVC unzip wget

read -p 'enter SVC name: ' SVC
read -p 'enter WEBURL: ' WEBURL
read -p 'enter package names seperated by space:' PACKS
read -p 'enetr dir name:' WEBDIR

echo "########################################"
echo "Installing Packages"
yum install $PACKS -y
echo "#########################################"
echo "Enabling and starting $SVC"
systemctl start $SVC
systemctl enable $SVC
cd /tmp/ && wget $WEBURL
cd /tmp/ && unzip $WEBDIR
cp -r /tmp/2119_gymso_fitness/* /var/www/html/
systemctl restart $SVC

