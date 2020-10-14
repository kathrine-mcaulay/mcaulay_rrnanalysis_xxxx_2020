#!/usr/bin/env bash

# Author: Kathrine McAulay
# Inputs: Name of the file from the archive, without the path
# Outputs: The appropriate rrnDB file to data/raw

archive=$1

wget -nc -P data/raw https://rrndb.umms.med.umich.edu/static/download/"$archive".zip
unzip -n -d data/raw data/raw/"$archive".zip
