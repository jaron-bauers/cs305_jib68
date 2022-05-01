#!/bin/bash

#go to repository directory
cd /home/jib68/cs305_jib68

#Positional arg.
FILE=$1

#variables
array=()
now=$(date)

#read file
while read line; do
	array+=( $line )
done <"$FILE"

#write to test.log
printf "%s        $now\n" "${array[@]}" > test.log

#push changes to github
