#!/usr/bin/python3
import sys

count = len(sys.argv)
print("length is: " + len(sys.argv)

if ( count > 1 ):
    print("Hello " + sys.argv[1])
    print("arguments supplied: " + str(count) )
else:
    print("Hello World")
