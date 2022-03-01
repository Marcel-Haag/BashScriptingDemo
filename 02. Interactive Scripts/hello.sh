#!/bin/bash
# Welcome to bash scripting
# Author: Marcel Haag
# Date: 11/01/21
echo -e "Hello $(basename $0)!" 
read -p "May I ask your name: " name
echo "Hello $name"
read -sn1 -p "Press any key to exit"
echo
exit 0
