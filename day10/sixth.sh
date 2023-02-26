#objective: write a function that performs addition or subtraction on 2 numbers
#	passed as parameter based on option selected by the user


#define function

operation(){
	
	option="$1"

	case "$option" in

	"addition") 
		echo "addition of $2 and $3 is $((  $2 + $3  ))"
		;;
	"subtraction") 
		echo "subtraction of $2 and $3 is $((  $2 - $3  ))"
		;;
	*)
		echo "use option as 'addition' or 'subtraction'"
		;;
	esac
}



#call function
operation  "addition" 10  20
operation "subtraction" 10 20
operation "add"  10 20
operation "multiply" 10 20
