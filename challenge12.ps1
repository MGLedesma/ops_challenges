# Script Name: Ops Challenge 12 - IP Analysis
# Author: Marygrace Ledesma
# Date of last revision: 08/09/2022
# Purpose: Powershell script that returns the IPv4 address string and no other extraneous information

function Search-IPv4
{
    $Search_IPv4 = ipconfig /all > "network_report.txt"
    Select-String -Path "network_report.txt" -Pattern "IPv4 Address"
}

Search-Ipv4
Remove-Item -Path "network_report.txt"

# End
