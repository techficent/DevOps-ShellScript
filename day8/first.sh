#objective: write a shell script with different functions for 
	#a) displaying mounted partitions
	#b) finding out free memory available in the system.
	#c) Asking user for a path and printing all txt files in that path & its sub-directories
	#d) Asking user for a filename & username and searching that file name in user's home folder

#!/bin/bash

display_partitions(){
	
	df -h 
}

find_free_memory(){
	
	free -h
}

find_txt_files(){
	read -p "Enter a location to be searched: " path

	if [[    -d "$path"      ]]
	then
		find  "$path"  -iname *.txt -type f
	else
		echo "wrong path. does not exist"
	fi
}

find_file_home_folder(){
	
	read -p "Enter a user name: " name
	
	id "$name" &>/dev/null
	
	returnValue=$?
	if [[    "$returnValue" -eq 0       ]]
	then
		home_folder=$(     getent passwd "$name" | awk -F: '{print $6}'          )
		
		read -p "Enter a filename: " file
		
		result=$(find "$home_folder"  -iname "$file" -type f)

		if [[   -z  "$result"          ]]
		then
			echo "File not found in user's home folder"
		else
			echo "file found"
		fi
	
	else
		echo "user account not found"
	fi
					
}

display_partitions
find_free_memory
find_txt_files
find_file_home_folder











