#!/bin/bash
myVar=10
my_func() {
    myVar=50
}

my_func
echo $myVar
