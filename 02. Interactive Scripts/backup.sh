#!/bin/bash
# Author: Marcel Haag
# Script to prompt to back up files and location
# The files will be search on from the user's home
# directory and can only be backed up to a directory 
# within $HOME
# Last Edited: November 1 2021
read -p "Which file types do you want to backup? " file_suffix
read -p "Which directory do you want to backup to? " dir_name
# The next lines create the directory if it does not exits
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name
# The find command will copy the files that match 
# the search criteria (e.g. .sh)
# The -path, -prune and -o options are to exclude the 
# backdirectory from the backup.
find $HOME -path $HOME/$dir_name -prune -o \
-name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;
exit 0
