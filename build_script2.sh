#!/bin/bash

#This script is designed to  check your system's processes and terminate 
# any processes exceeding the the set limit for memory usage.

#Greet User
echo "Hello and Welcome!"

sleep 1

echo "Today we will be checking the sytem processes."

sleep 1
echo "-----------------------------------------------"

#ps command shows sytems processes running in the current shell 
#the -e option tells it to show all processes , using format to show which 
#fields we want to see

#The -sort parameter forces ps to sort the output
# using the "-" before %mem after the sort option sorts in reverse
# head by itself takes the top ten

ps -e --format %mem,pid,comm --sort -%mem | head

sleep 1
echo "Please input a memory threshold for system processes."

read threshold
#if threshold is not a number the script will still run

#using an if statement with awk to show the row if the threshold
#is surpassed

while

ps -e --format %mem,pid,comm --sort -%mem | head | awk '{ if ($1 >'$threshold') print $1,$2,$3}'

do

echo "Would you like to terminate a process? Please type yes or no?"

read ans

#take the the first letter from the answer and make sure its lowercase

ans1=$(echo $ans | head -c 1 | tr [A-Z] [a-z])

if [ $ans1 != "y" ];

then

echo "Exiting, Hope everything looks great!"
exit 1

else

echo "Please choose a pid to be terminated?"

read pid

# pkill to kill the process, using -e option to list the killed process
# also, the --ns option tells pkill to match the namespace with pid#

pkill -e --ns "$pid"

#an improper pid will result in the pkill help page being displayed


echo "______________________________________"
fi

done
