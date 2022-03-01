#!/bin/bash
# Author: Marcel Haag
# Script to evaluate grades
# Usage: grade.sh student grade
# Date: 11/2/2021
if [ ! $# -eq 2 ]; then
    echo "You must provide <student> <grade>"
    exit 2
fi
case ${2^^} in # Parameter extension is used to capitalize input
    [A-C]) echo "$1 is a star pupil"
    ;;
    [D]) echo "$1 needs to try a little harder!"
    ;;
    [E-F]) echo "$1 could do a lot better next year"
    ;;
    *) echo "Grade could not be evaluated for $1 $2"
    ;;
esac
