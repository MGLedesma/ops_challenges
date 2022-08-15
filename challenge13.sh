#!/bin/bash

# Script:   Ops 201 Class 13 Ops Challenge Solution
# Author:   MaryGrace Ledesma
# Date of latest revision:	8/13/2022
# Purpose:	Write a script that run domain info.

# Main

# Take a user input string. Presumably the string is a domain name such as Google.com.
# Run whois against a user input string.
# Run dig against the user input string.
# Run host against the user input string.
# Run nslookup against the user input string.
# must use at least one variable and one function.

echo "type a domain name"
read webname

url_info () {
    whois $webname >> domain_info.txt
    dig $webname >> domain_info.txt
    host $webname >> domain_info.txt
    nslookup $webname >> domain_info.txt
}

url_info
code domain_info.txt

# End

