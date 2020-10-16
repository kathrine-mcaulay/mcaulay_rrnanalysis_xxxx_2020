#!/usr/bin/env bash

# Author: Kathrine McAulay
# Inputs: Name of the file from the archive, without the path
# Outputs: The appropriate rrnDB file to data/raw

target=$1

filename=`echo $target | sed "s/.*\///"`
path=`echo $target | sed -E "s/(.*\/).*/\1/"`

wget -nc -P "$path" https://rrndb.umms.med.umich.edu/static/download/"$filename".zip
unzip -n -d "$path" "$target".zip

touch "$target"
