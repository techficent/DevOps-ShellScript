#example 2: Create a function to add 2 numbers given as input by the user

#!/bin/bash

addition(){

	#step 1: take first input from the user
	read -p "Enter a number: " firstNumber

	#step 2: take second number from the user
	read -p "Enter second number: " secondNumber

	#step 3: add using (( )) and print result
	echo "Addition of $firstNumber and $secondNumber is $((  $firstNumber + $secondNumber   ))"
}

addition


#coder : who can write code
#programmer/developers : who can apply logic in code to be written
#software engineers : who can program for exceptional scenario as well
