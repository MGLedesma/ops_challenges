#!/bin/bash

# Script:   Ops 201 Class 05 Ops Challenge Solution
# Author:   MaryGrace Ledesma
# Date of latest revision:	8/13/2022
# Purpose:	Write a script that kill PID and uses a loop

# Main

# displays running processes, 
ps aux

answer="no" 

while [ $answer == "no" ]
do 
    # asks the user for a PID, 
    echo "please enter a PID to kill"
    read pidvar

    # Use a loop in your script, so that it can prompt the user to choose an option.
    echo "Do you want to continue? (yes/no)" 
    read answer
    
done

# then kills the process with that PID.
sudo kill -9 $pidvar
echo "$pidvar kill completed"

# End