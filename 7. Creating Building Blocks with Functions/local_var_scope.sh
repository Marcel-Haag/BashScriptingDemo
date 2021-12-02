#!/bin/bash
myVar=10
my_func() {
    # [local] declares variable exlusive to the function
    local myVar=50
}

my_func
echo $myVar
