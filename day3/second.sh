

#objective:  Find all files created by the user in their home folder that are with extension .sh
	# username must be taken for the user
# Save all files found in an array




#!/bin/bash

#Taking input
read -p "Enter a user Name: " userName

#how to redirect both output and error to /dev/null (discard output & error)
id $userName  &>/dev/null

#how to capture return value
returnValue=$?

if [[     "$returnValue" -eq 0              ]]
then
	#saving output to a variable
	data=$(getent passwd  "$userName")
	
	#saving output of pipe commands into a variable
	homeFolder=$(echo "$data" | awk -F":" '{print $6}')
	
	#passing variables to find utility
	find  "$homeFolder" -iname \*.sh -type f -user "$userName"
else
	
	echo "Cannot complete task because user name is invalid!"
fi
