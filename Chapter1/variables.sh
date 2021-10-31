#!/bin/bash
# Basic variables
name="Lecram"
age=23
total=420.69
myarr=(one two three four five)
echo $name
echo $age
echo $total
echo ${myarr[*]}
echo ${myarr[1]}
unset myarr[1] # This will remove the second element
unset myarr    # This will remove all elements
# Environment variables
echo $BASH_VERSION
echo $HOME
echo $PATH
echo $USER
# Command substitution
cur_path=$(pwd)
echo $cur_path
# Call another script instead of doing exit 0
export name # The variable will now be accessable to other processes
./secondScript.sh
