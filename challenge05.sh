#!/bin/bash

# displays running processes, 
ps aux

# asks the user for a PID, 

echo "this is the end of the search, please enter a pid to kill"
read pidvar

answer="no" 

while [ $answer == "no" ]
do 
    
    # Use a loop in your script, so that it can prompt the user to choose an option.
    echo "Do you want to continue? (yes/no)" 
    read answer


    # then kills the process with that PID.
    sudo kill -9 $pidvar
    echo $pidvar


done


