#!/usr/bin/bash

echo "This script will lock the user's account and zip the home directry"




# chekcing file is present or not
if [  -f users.db ]
then
   for user in $(cat users.db)
   do
     if id $user &> /dev/null
     then
        echo 
        echo
     	echo "locking user $user ...."
     	passwd -l $user
     	homeDir=$(grep ^${user}: /etc/passwd | cut -d ':' -f 6)
     	echo "User's home directy is: $homeDir"
     	tar -cf  ${user}.$(date +%F).tar   $homeDir  &> /dev/null
	sleep 2
     else
        echo "User $user doesn't present ...!!!!"
     fi
    done
else
   echo "File users.db don't present"
fi 
