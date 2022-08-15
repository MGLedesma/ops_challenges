# Script: Ops 201 Class 09 Ops Challenge
# Author: MaryGrace Ledesma
# Date of latest revision: August 14, 2022
# Purpose: Create a script fetches System event logs.

# Main

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | > C:\Users\GraceLed\Desktop\last_24.txt

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-EventLog -LogName System -EntryType Error | > C:\Users\GraceLed\Desktop\errors.txt

# Print to the screen all events with ID of 16 from the System event log.
get-eventlog -logname system -instanceid 16

# Print to the screen the most recent 20 entries from the System event log.’
get-eventlog -logname system -newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
get-eventlog -logname system -newest 500 | select-object -property source | format-table -autosize