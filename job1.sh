#!/bin/bash

#Clarence Munn
# August 4, 2022
#Automatic System Update to be run every Friday at 11pm

echo 'sudo apt update' > "updatedfile_$(date)".txt

#Human Readable
# display the output of the "Sudo Apt Update" command and
#place it inside of a new file called updatefile  with the date
#attached to the file name.

#inside of the crontab, I used: 0 23 * * 5 to get the script to run every 
#Friday at 11pm. 
