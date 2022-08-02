#!/bin/bash

# our script must use at least one array, one loop, and one conditional.
file_array=(file6 dir6)

# Create a script that detects if a file or directory exist.
[ -d ${file_array[0]} ]
[ -f ${file_arrya[1]} ]

# then creates it if it does not exist.

