#!/bin/bash

# Script:   Ops 201 Class 06 Ops Challenge Solution
# Author:   MaryGrace Ledesma
# Date of latest revision:	8/13/2022
# Purpose:  Create a script that detects if a file or directory exist.

# Main

# script must use at least one array, one loop, and one conditional.
# then creates it if it does not exist.

test6=(file6.txt dir6)

if [[ -e ${test6[0]} && -d ${test6[1]} ]]; then 
    echo "${test6[0]} already exist"
    echo "${test6[1]} already exist"
else    
    touch file6.txt; echo "file6 is created"
    mkdir dir6; echo "dir6 is created"
fi

# End 

