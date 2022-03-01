#!/bin/bash
# Author: Cel
# Script will prompt filename
# then remove commented and blank lines
# Last Edited: December 2021

is_file() {
    if [ ! -f "$1" ] ; then
        echo "$1 does not seem to be a file."
    fi
}

clean_file() {
    is_file "$1"
    BEFORE=$(wc -l "$1")
    echo "The file $1 starts with $BEFORE"
    sed -i.bak '/^\s*#/d;/^$/d' "$1"
    AFTER=$(wc -l "$1")
    echo "The file $1 is now $AFTER"
}

read -p "Enter a file to clean: "
clean_file "$REPLY"
exit
