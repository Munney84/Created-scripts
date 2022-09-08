#!/bin/bash

echo "Greetings! Which server  would you like to connect to?"
sleep 1
echo "please type an IP address to check"

read IP

echo "Checking server"

ping -c 3 $IP

if  [[ $(ping -c 3 $IP) ]];

then
	echo "Would you like to conect?"
else
	echo "no connection"
fi
	read ans
		ans1=$(echo $ans | head -c 1 | tr [A-Z] [a-z])

	if [[ $ans !="y" ]];
	then 
echo  "exiting"
else
	echo "Connecting"
sleep 1

ssh -i Cali1.pem ec2-3-82-96-71.compute-1.amazonaws.c@35.174.129.78.68

exit 0

