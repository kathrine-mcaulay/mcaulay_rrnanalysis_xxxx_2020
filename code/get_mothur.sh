#!/usr/bin/env bash

# Author: Kathrine McAulay
# Inputs:
# Outputs: Downlaods mothur into code/

# This downloads and extracts mothur v1.44.3 into code/


wget -P code/ -nc https://github.com/mothur/mothur/releases/download/v1.44.3/Mothur.OSX-10.14.zip
unzip -d code/ code/Mothur.OSX-10.14.zip

if [[ $? -eq 0 ]]
then
  touch code/mothur/mothur
else
  echo "FAIL: There was a problem with mothur installation"
  exit 1
fi
