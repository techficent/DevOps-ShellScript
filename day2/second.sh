#!/bin/bash  


#Objective: Find list of all files created by the user with the given name in the given folder.

#step 1: Take username as input

#step 2: Take location as input

#step 3: Verify if location is a folder and user is present

#step 4: find all files of that user in given location(and its sub-foldlers)


read -p  "Enter username: " userName

read -p "Enter a valid folder location: "  location


# check if username is valid AND location is valid

id  $userName   &>/dev/null
returnCode=$? #either 0 if command was successful else some other number


if   [[  $returnCode -eq 0  &&  -d  "$location"    ]]
then
	find   $location -user $userName
else
	echo "Invalid name or location given"
fi














