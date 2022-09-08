#!/bin/bash

#Hello user!! This script will automatically update and upgrade your system ;-)

#You need to be a superuser to run the script!!


if [[ $PATH != 0 ]] 
 then
	echo "You need to be a superuser"
        exit 1
else
 #Below will update the repositories the apt command is aware of.
	while [ $UID == 0 ];
 	do
        apt -y update


	done

#Next we want to prompt the user if they would like to proceed. 

echo " You are about to upgrade, would you like to proceed? " 

read ans


ans2=$(echo $ans | cut -c 1 | tr [:upper:] [:lower:] )

#If the user answers yes, then the system will upgrade!!

if [ $ans2 = "y" ];
 then
        apt -y upgrade
fi

fi
exit 0
