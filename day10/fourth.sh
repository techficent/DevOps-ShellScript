#Objective: To compare 2 arguments PASSED TO A FUNCTION and print the larger number. If both numbers
# are same: print a message "both numbers are equal"

#!/bin/bash


#step 1: define a function

compareNumbers(){

	#step 1a) check if first number and second number are equal
	if [[   "$1"  -eq  "$2"       ]]
	then
		echo "Both numbers are equal"

	#step 1b) else if check whether first number is greater than second number
	elif [[   "$1" -gt "$2"           ]]
	then
		echo "first number: $1 is greater than second number $2"
	
	#step 1c) else part: (second number is greater)
	else	
		echo "second number: $2 is greater than first number $1"
	fi
}
#step 2: call the function

compareNumbers 10  20
