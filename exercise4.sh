#!/bin/bash
# Title		:
# Description	:script for scp & ssh by demonstrating remote login & file transfer functions  
#		
# Author	: Clarence Munn
# Date		: Wed Sep 21 01:31:46 PM EDT 2022 
# Version	: 1
# Usage		: exercise4.sh 
# Notes		:
#=======================================================================

#show menu for user to choose SSH or SCP
filepath=$1

echo -e "Would you like to remote login or transfer files?\n"
echo -e "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
echo -e "a) remote login	    or 	    b) transfer files\n"
echo -e "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"

echo -e "enter a or b\n"

read ans
sleep 1
echo -e "******************************************************************************\n\n"
sleep 2
case $ans in
    a)
        echo "using ssh to login"
        echo "enter a username"
        read uname
        echo "enter an ip address"
        read ip
        echo "enter the rsa key or key location"
        read key

        ssh -i $key $uname@$ip
        echo "connecting"
        ;;
    b)
        echo "using scp to transfer"
        echo -e "Which direction are you sending the file\n"
        echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++\n"
        echo "a) local to remote    or      b) remote to local"
        echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++\n"
        echo -e "enter a or b\n"
        read direction
        echo "enter a username"
        read uname
        echo "enter an ip address"
        read ip
        case $direction in
            a)
                if  [ -z $filepath] ;
                then   
                echo "enter the file name or path of the file you want to send"
                    read file
                    scp $file $uname@$ip
                else
                    echo scp $1 $uname@$ip
                fi
            ;;
            b) 
                if  [ -z $filepath] ;
                then   
                echo "enter the path of the file you'd like to send"
                    read file
                    scp $uname@$ip/$file ~/Desktop
            esac




esac