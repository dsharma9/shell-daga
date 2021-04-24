#!/usr/bin/bash

echo "This script will create the users from the file"

#checking the users.db file exit or not
if [ -f users.db ]
then
	for user in $(cat users.db)
	do
		if  id $user &> /dev/null
		then 
		  echo "User $user already exit...."
	  	else	  
			useradd $user
			echo "user $user added..........."
		fi
	done
else
	echo "The users.db file is missing."
fi

