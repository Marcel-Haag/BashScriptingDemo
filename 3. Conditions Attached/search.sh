#!/bin/bash
# Author: Marcel Haag
usage="Usage: search.sh <file> <string> <operation>"

if [ ! $# -eq 3 ];
    then
    echo "$usage"
    exit 2
fi

[ ! -f $1 ] && exit 3

case $3 in
    [cC])
        message="Counting the matches in $1 of $2"
        opt="-c"
    ;;
    [pP])
        message="Print the matches of $2 in $1"
        opt=""
    ;;
    [dD])
        message="Printing all lines but those matching $3 from $1"
        opt="-v"
    ;;
    *)
        echo="Could not evaluate $1 $2 $3"
    ;;
esac
echo $message
grep $opt $2 $1
