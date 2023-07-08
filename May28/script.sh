#!/bin/bash


#step 1: a function for finding file in given location

findFile(){
	
	if [[   -d "$2"      ]]
	then
		find "$2" -regextype posix-egrep -regex ".*$1" -type f 
	else
		echo "location is invalid"
	fi
	return 0
}



# step 2: user input

read -p "Enter a pattern to search: " pattern
read -p "Enter a location to search: " location

# step 3: call the function
findFile $pattern $location

ret=$?

if  [[     "$ret" -eq 0     ]] 
then
	echo "Thank you for using our program"
else
	echo "Something went wrong. Please try again"
fi



