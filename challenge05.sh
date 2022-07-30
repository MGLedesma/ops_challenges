#!/bin/bash

# displays running processes, 
ps aux


# asks the user for a PID, 
echo "this is the end of the search, please enter a pid to kill"
read pidvar

# then kills the process with that PID.
sudo kill -9 $pidvar
# echo $pidvar

