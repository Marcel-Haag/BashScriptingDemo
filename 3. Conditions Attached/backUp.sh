#!/bin/bash
# Author: Marcel Haag
# Script to prompt to back up directory
# Operator will be able to choose the level of compression
# Last Edit: November 2 2021
read -p "Choose H, M or L compression: " file_compression
read -p "Which directory do you want to backup to? " dir_name
# The next lines creates the directory if it does not exist
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name
backup_dir=$HOME/$dir_name
# The next lines compress the directory and move it to the back up directory
tar_l="-cvf $backup_dir/b.tar --exclude $backup_dir $HOME"
tar_m="-czvf $backup_dir/b.tar --exclude $backup_dir $HOME"
tar_h="-cjvf $backup_dir/b.tar --exclude $backup_dir $HOME"

if [ $file_compression = "L" ];
    then
    tar_opt=$tar_l
elif [ $file_compression = "M" ];
    then
    tar_opt=$tar_m
elif [ $file_compression = "H" ];
    then
    tar_opt=$tar_h
else
    echo "Compression $file_compression not supported."
    exit 1
fi 
tar $tar_opt
exit 0
