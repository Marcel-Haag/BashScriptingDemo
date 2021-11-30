#!/bin/bash
# Author: Cel
# Script to ping servers from file 
# Last Edited: November 2021
if [ ! -f$1 ] ; then
    echo "The input to $0 should be a filename"
    exit 1
fi
echo "The following servers are up on $(date +%x)" > server.out

while read server
do
    ping -c1 "$server" && echo "Server up: $server" >> server.out
done
cat server.out
