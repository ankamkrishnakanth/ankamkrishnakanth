#!/bin/bash
:' this script will set sloopa website on
CENTOS 7.5'
SVC=httpd
WEBURL=https://www.tooplate.com/zip-templates/2108_dashboard.zip
PACKS=$SVC unzip wget
yum install $PACKS -y
systemctl start $SVC
systemctl enable $SVC
cd /tmp/ && wget $WEBURL
cd /tmp/ && unzip 2108_dashboard.zip
cp -r /tmp/2108_dashboard/* /var/www/html/
systemctl restart $SVC

