#!/bin/bash
# Weclome script to display a message to usage on login
# Author: Marcel Haag
# Date: 11/4/2021
shopt -s nocasematch # turn off case sensitivity
read -p "Type color or mono for script output: "
if [[ $REPLY =~ colou?rs ]];
    then
    source $HOME/snippets/colors
fi
# Where parameters are not set the display will be mono
echo -e "${GREEN}This is $0 $RESET"
shopt -u nocasematch # reset case sensitivity
exit 0
