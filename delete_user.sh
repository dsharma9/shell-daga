#!/usr/bin/bash

echo This script will delete the users. And taks input from a file

if [ -f users.db ]
then
    for user in $(cat users.db)
    do
       if id $user &> /dev/null
       then
       	   userdel   -r   $user
	   echo "The user $user deleted............."
	   echo 
       else
	   echo "user $user doesn't present in the System"
       fi
    done
else
    echo "File users.db doesnot exit......"
fi
