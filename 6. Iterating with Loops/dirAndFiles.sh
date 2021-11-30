#!/bin/bash
for path in /home/cel/*
do
    if [ -d "$path" ]
    then
        echo "$path is a directory"
    elif [ -f "$path" ]
    then
        echo "$path is a file"
    fi
done
