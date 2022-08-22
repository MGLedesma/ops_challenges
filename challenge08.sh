#!/bin/bash

# Script: Ops 201 Class 08 Ops Challenge Solution                 
# Author: MaryGrace Ledesma
# Date of latest revision: 8/21/2022
# Purpose: Create a batch file that recursively copies Jorge’s work files on his desktop every night at midnight.

#Main 

ROBOCOPY "C:Users\j.thompson\Desktop\My Project Files" "C:\Users\j.thompson\Desktop" /Log:nightlybackup.txt

#End