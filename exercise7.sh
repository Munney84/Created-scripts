#!/bin/bash
# Title		:
# Description	:  compare integer values from a ‘n’ number of arguments using command line arguments and return the largest number
#		
# Author	:Clarence Munn
# Date		: Thu Sep 22 12:16:39 PM EDT 2022 
# Version	: 1
# Usage		: exercise7.sh 
# Notes		:
#=======================================================================
echo "Enter amount of numbers to compare"
read N

i=1
max=0
echo "enter numbers"
read $num
while [ $i -le $N ]
do
  
  if [ $i -eq 1 ]  #set first number as max
  then
      max=$num
  else             #from number 2 update max if the num > max.
      if [ $num -gt $max ]
      then
        max=$num
      fi
  fi
  i=$((i + 1))  #increment i by 1
done

echo $max