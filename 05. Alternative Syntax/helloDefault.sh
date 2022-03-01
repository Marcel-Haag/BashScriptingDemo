#!/bin/bash
name=$1
[ -z $name ] && name="Anonymous"
# Or just use parameter substitution to provide default value
name=${1-"Anonymous"}
echo "Hello $name"
exit 0
