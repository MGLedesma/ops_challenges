# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: MaryGrace Ledesma
# Date of latest revision: August 14, 2022
# Purpose: PowerShell script that will analyze, initialize, and terminate processes (programs).

# Main

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object PID -Descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
Start-Process iexplore https://owasp.org/www-project-top-ten/

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
for ($1 = 1; $i -le 10; $i++) {Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/}

# Close all Internet Explorer windows.
Get-Process iexplore | Stop-Process

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.
Stop-Process -Id 185432

# End