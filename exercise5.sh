#!/bin/bash
# Title		: exercise5
# Description	:  addition of two numbers
#		
# Author	: Clarence Munn
# Date		: Thu Sep 22 10:48:18 AM EDT 2022 
# Version	: 1
# Usage		: exercise5.sh 
# Notes		:
#=======================================================================
echo "Please enter the first number"
read num1
echo "please enter the second number"
read num2
sleep 1
echo "the total is.."
echo "$num1+$num2"|bc