#!/bin/bash
if [ "marcel" = "Marcel" ]
then 
    echo "Strings are identical"
else
    echo "Strings are not identical"
fi

if [ "marcel" \> "Marcel" ]
then
    # This will be true since in the ASCII oder, the lower-case characters are higher than the upper case
    echo "String1 is greater than string2"
else
    echo "String1 is lower than string2"
fi

if [ -n "marcel" ]
then
    echo "String is greather than zero"
else
    echo "String is zero length"
fi

if [ -z "marcel" ]
then
    echo "String is zero"
else
    echo "String is not zero"
fi
