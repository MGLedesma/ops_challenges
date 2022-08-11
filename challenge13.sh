#!/bin/bash

# Take a user input string. Presumably the string is a domain name such as Google.com.
# Run whois against a user input string.
# Run dig against the user input string.
# Run host against the user input string.
# Run nslookup against the user input string.

# must use at least one variable and one function.

echo "type a domain name"
read answer

webname=answer

domain_info () {
    whois; dig; host; nslookup $answer | cat > "domain_info.txt"
}

domain_info 
cat domain_info.txt
