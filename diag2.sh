#!/bin/bash

if [ $UID != 0 ];

then
echo "You must have sudo priveledges"
exit 1

else

echo "What is your First and Last name?"
read name1

echo "which shell would you like?"
read shell

echo "which group are you in?"
read group

echo "Please type in a password"
read password

echo "$name1:$shell:$group:$password" > created_user.txt

user_name=$(cat created_user.txt | head -c 1 && cat created_user.txt | cut -d ":" -f 1 | awk '{print $2}')

echo "Your user name is $user_name"

useradd -m -g $group -s $shell $user_name

echo $user_name:$password | chpasswd

fi
exit 0
