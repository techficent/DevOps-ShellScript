#objective: print even numbers in an array passed to the function

#step 1: define the function
print_even(){
	arr="$1"
		#step 1a) loop over the array passed
		#rule: index in shell script array starts from zero
		
		size=${#arr[@]}

		for((  idx=0; idx<size;idx++    ))
		do
			#step 1b) if number is even, print the number
			value=${arr[$idx]}

			if [[     "$((  $value % 2 ))" -eq 0        ]]
			then
				echo "$value is an even number"
			fi
		done

}

print_for_each_even(){

	arr="$1"

	for value in "${arr[@]}"
	do
		if [[  "$(( $value % 2 ))"  -eq 0   ]]
		then
			echo "$value is an even number"
		fi
	done
			
}


#step 2: call the function by passing an array
arr=(10 20 21 31 54 63 91 -10 0)

print_even $arr
print_for_each_even $arr


















