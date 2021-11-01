#!/bin/bash
while [ -n "$1" ]
do
case "$1" in 
-a) echo "-a option used" ;;
-b) param="$2"
echo "b option passed, with value $param"
shift ;; # now the scipt identifies the option and the passed value for the second option
-c) echo "-c option used" ;;
--) shift
break ;;
*) echo "Option $1 not an option" ;;
esac
shift # shift command shifts the options one step to the left
done
# iteration over options is finished here.
# iteration over parameters started.
num=1
for param in $@ # $@ includes all parameters passed to the script
do
echo "#$num: $param"
num=$(( $num + 1 ))
done
