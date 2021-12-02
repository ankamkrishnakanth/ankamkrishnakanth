#!/bin/bash
rm -rf /tmp/*
cd /tmp/ && wget https://www.tooplate.com/zip-templates/2126_antique_cafe.zip
cd /tmp/ && unzip 2126_antique_cafe.zip
rm -rf 2126_antique_cafe.zip
if [ -d /tmp/* ]
then
	echo "directory detected"
else
  if [ -e /tmp/* ]
  then
	  echo "file detected"
  fi
fi

