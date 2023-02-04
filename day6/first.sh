##objective: Take a backup of entire folder whose path is given as input.
	#### Preserve timestamp


## step 1: take input of path from user
## step 2: check if path is a valid folder
## step 3: choose the backup location : [ /tmp/backups ]
## step 4: use cp command with right options to complete copy based backup



#!/bin/bash


read -p "Enter a path: " path

if [[     -d  "$path"         ]]
then
	cp -rp "$path" /tmp/backups	
else
	echo "cannot take backup. source or destination maybe invalid or permission must be denied"
fi
