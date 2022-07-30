#!/bin/bash

# displays running processes, 
ps aux

answer="yes" 

while [ $answer == "yes" ]
do 
    # asks the user for a PID, 
    echo "this is the end of the search, please enter a pid to kill"
    read pidvar

    sudo kill -9 $pidvar
    # Use a loop in your script, so that it can prompt the user to choose an option.
    echo "Do you want to continue? (yes/no)" 
    read answer
 
done

# then kills the process with that PID.
# sudo kill -9 $pidvar
# echo $pidvar

