##objective: Take a backup of entire folder whose path is given as input.
	#### Preserve timestamp


## step 1: take input of path from user
## step 2: check if path is a valid folder
## step 3: choose the backup location : [ /tmp/backups ]
## step 4: use cp command with right options to complete copy based backup



#!/bin/bash

#take input from user 
read -p "Enter a path: " path

if [[     -d  "$path"         ]]
then
	cp -rp "$path" /tmp/backups	

	returnValue=$?

	#if cp executed correctly, print success message else show error msg

	if [[     "$returnValue" -eq 0             ]]
	then
		echo "copy successful"
	else
		echo "copy from $path location to /tmp/backups failed"
	fi

else
	echo "source or destination maybe invalid"
fi
