#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge                   
# Author: MaryGrace Ledesma
# Date of latest revision: 8/12/2022
# Purpose: Create a script that display specific system information

# Use lshw to display system information and grep to remove irrelevant information
# use dmidecode to display BIOS information
# Add text to indicate which component the script is returning information about
# run as sudo

echo "--- Computer Name ---"
lshw | head -n 1

echo "--- CPU ---"
lshw -c processor | grep -A2 Intel
lshw -c processor | grep -e width

echo "--- RAM ---"
lshw -c memory | grep -e description -e physical -e size

echo "--- Display Adapter ---"
lshw -c display | grep -v version | grep -v logical | grep -v display 

echo "--- Network Adapter ---"
lshw -c network | grep -v network

echo "--- BIOS ---"
dmidecode -t 0

# End

