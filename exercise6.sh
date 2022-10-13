#!/bin/bash
# Title		:
# Description	:  
#		
# Author	:Clarence Munn
# Date		: Thu Sep 22 11:04:22 AM EDT 2022 
# Version	: 1
# Usage		: exercise6.sh 
# Notes		:
#=======================================================================
num1=$1
operator=$2
num2=$3

#echo "$[$1+$2]"| bc

case $operator in
    +)
    echo "$num1+$num2"| bc
    ;;
    -)
    echo "$num1-$num2"| bc
    ;;
    x)
    echo "$num1*$num2"| bc
    ;;
    /)
    echo "$num1/$num2"| bc -l
    ;;
    ^)
    echo "$num1^$num2"| bc

    esac