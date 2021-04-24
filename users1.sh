#!/usr/bin/bash

echo $@

users=$@

for user in $(cat users.csv) 
do 
	useradd $user 
	echo user $user created
	echo  
done 
