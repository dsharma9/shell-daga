#!/usr/bin/bash

echo "This scirpt will take user user's name to lock it"


while :
do

	read -p "Kindly enter the username to lock it: " user

	if [ -z $user ]
	then
		echo "No username passed. "
	else
	    if id $user &> /dev/null
            then
		echo "The user $user will be locked"
		passwd -l $user
		echo "user $user Deleted"
		exit 0
	    else
		echo "User $user Does not exit"
	    fi
			
	fi
done
