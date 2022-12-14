#!/bin/bash

# Script:   Ops 201 Class 04 Ops Challenge Solution
# Author:   MaryGrace Ledesma
# Date of latest revision:	8/13/2022
# Purpose:	Write script that uses arrays

# Main

# Creates four directories: dir1, dir2, dir3, dir4

mkdir {dir1,dir2,dir3,dir4}

# Put the names of the four directories in an array

array_name=(dir1 dir2 dir3 dir4)

# References the array variable to create a new .txt file in each directory.

touch ${array_name[0]}/new.txt
touch ${array_name[1]}/new.txt
touch ${array_name[2]}/new.txt
touch ${array_name[3]}/new.txt

# End