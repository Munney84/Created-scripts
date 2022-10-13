#!/bin/bash
# Title		:
# Description	:  
#		
# Author	:Clarence Munn
# Date		: Tue Oct  4 10:49:13 AM EDT 2022 
# Version	: 1
# Usage		: exercise8.sh 
# Notes		: Read an multi-digit number from user and reverse the number.
#             When ‘0’ comes as last digit, discard while reversing.
#=======================================================================
if [ ${1: -1} = 0 ];
#reads the argument's last digit to see if its zero, if 0 "then"
    then 
   digit=$( echo $1 | awk '{ for(i=length;i!=0;i--)x=x substr($0,i,1);}END{print x}')
#reverses the order of the number and saves it as a variable 
    echo ${digit: 1}
#prints the nummber in reverse and removes the zero from the first place in the string
    else
    echo $1 | awk '{ for(i=length;i!=0;i--)x=x substr($0,i,1);}END{print x}'
#If last number is not zero prints the number in reverse order
fi