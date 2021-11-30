#!/bin/bash
file="file1.txt"
IFS=$'\n' # Here we change the default value IFS to be a newline
for var in $(cat $file)
do
    echo " $var"
done
