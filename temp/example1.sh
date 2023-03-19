#!/bin/bash


square(){

	arr=()
	read -p "Enter the total number of elements you want to enter: " N
	for((  i=0;i<"$N";i++   ))
	do
		read -p "Enter a value " value
		arr+=("$value")
	done
	

}

square

for element in "${arr[@]}"
do
	echo "$element"
done
