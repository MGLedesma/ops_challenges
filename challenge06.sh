#!/bin/bash

# script must use at least one array, one loop, and one conditional.
# Create a script that detects if a file or directory exist.
# then creates it if it does not exist.

test6=(file6.txt dir6)

if [[ -e ${test6[0]} && -d ${test6[1]} ]]; then 
    echo "${test6[0]} already exist"
    echo "${test6[1]} already exist"
else    
    touch file6.txt; echo "file6 is created"
    mkdir dir6; echo "dir6 is created"
fi


