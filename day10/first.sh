#example 1: add 2 numbers given as input by the user

#!/bin/bash


#step 1: take first input from the user
read -p "Enter a number: " firstNumber

#step 2: take second number from the user
read -p "Enter second number: " secondNumber

#step 3: add using (( )) and print result
echo "Addition of $firstNumber and $secondNumber is $((  $firstNumber + $secondNumber   ))"
