#!/bin/bash
# Author: Marcel Haag
# Created at: November 1 2021
read -p "Which directory do you want to clear? " dir_name
# Check if the directory exists inside HOME
test -d $HOME/$dir_name || echo "Directory is not inside $HOME or doesn't exist at all."
# Remove files
rm -rf $HOME/$dir_name/*
exit 0
