#!/bin/bash
# Title		:
# Description	:  
#		
# Author	:Clarence Munn
# Date		: Tue Sep 13 09:21:39 PM EDT 2022 
# Version	: 1
# Usage		: exercise2.sh 
# Notes		:
#=======================================================================
echo "please select a number to begin"

read ans
end=$(($ans + 4 ))
for n in {$ans..$end}
do
seq -s " " $n 
done


