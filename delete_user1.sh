#!/usr/bin/bash

echo "deleting the passed user"

for i in $(cat users.csv)
do
	userdel $i
	echo user $i has been deleted.
        echo Deleing user $i\'s home dir
        rm -rf /home/$i
done
