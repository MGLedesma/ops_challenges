#!/bin/bash

# write scripts that print login users
login=`last`

showlogin () {
    echo $login
}

showlogin

# must have one variable and functions