#!/bin/bash
echo "Enter a number to begin"
#read num1

#num2=$(($num1+1))
#num3=$(($num2+1))
#num4=$(($num3+1))
#echo "   $num1   "
#echo "  $num2 $num3  "
#echo " $num4 $num2 $num3 "
#echo "$num1 $num2 $num3 $num4"

read num
b=$(($num+5))

for (( i=$num; i<=$b; i++ ))
do
    seq -s " " $i
done