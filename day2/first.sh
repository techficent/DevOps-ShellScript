#!/bin/bash


#Objective: Ask the user to enter a file path. If path isvalid, show the permissions of that file. If path is invalid, print "Invalid path" on the screen

# step 1: input from the user is to be saved in a variable

# step 2: checking if file exists!
	# 2a) if exists, print column 1 of ls -l output
	# 2b) If path is not valid, echo the invalid message



read -p  "Enter a location for a file: "  location

#if location is present AND location is for a regular file
if [[    -e "$location"  && -f  "$location"      ]]
then
	ls -l  $location |   awk -F" " '{print $1}' 
else
	echo  "invalid path"
fi


