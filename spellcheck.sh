#!/bin/bash


filepath=$1

if [ $# != 1 ];
then 

echo "Which file would you like to spellcheck?"
exit 1
fi

if [ -e $filepath ];

then

aspell check $filepath

fi
exit 0

