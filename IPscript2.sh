#!/bin/bash
echo "Greetings! Which file  would you like to upload to?"
sleep 1
echo "please type a file location"

read file

echo "$file"
echo "Is this file correct"
read ans

ans1=$(echo $ans | head -c 1 | tr [A-Z] [a-z])

sleep 1
if [[ ans1 != "y" ]]
then 
echo "Please try again"
exit 1
else

scp $file ec2-3-82-96-71.compute-1.amazonaws.c@35.174.129.78.68

sleep 2

ssh -t ec2-3-82-96-71.compute-1.amazonaws.c@35.174.129.78.68 ls
