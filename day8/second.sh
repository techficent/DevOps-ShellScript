#objective: Take a value N. Ask user to enter "N" username. Save all these values in an array
	   #print the home folder for each username that is valid in the format
	   #<username> :  <home-folder>
	   #for names which are not valid, print error message in the format
	   #<username> : DOES NOT EXIST


#!/bin/bash
read -p "Enter N value: " N #2

user_names=() #blank array

for (( count=1; count<=$N;count++       ))
do
	read -p "Enter a username " name
	user_names+=($name)  #adding username input to the array
done

logic(){
	
	id "$1" &>/dev/null
	returnValue=$?
	if [[    "$returnValue" -eq 0       ]]
	then
 		home_folder=$(     getent passwd "$1" | awk -F: '{print $6}'          )
		echo "$1 :  $home_folder"
	else
		echo "#name :  DOES NOT EXIST"
	fi
}

#for each: iterative for loop
for name in "${user_names[@]}"
do
	logic $name
done





