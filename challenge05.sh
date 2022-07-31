#!/bin/bash

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

