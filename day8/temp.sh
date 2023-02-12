name="harshit"

get_entry(){

	read -p "Enter a name: " name

	id "$name"  &>/dev/null
	returnValue=$?
	if [[    "$returnValue" -eq 0         ]]
	then
		getent passwd "$name"
	else
		echo "User account not found"
	fi
}

addition(){
	
	ans=$((    $1 + $2        ))
	echo "Answer is $ans"
}

read -p "Enter a number: " n1
n2=100

addition $n1  $n2 #addition function is called. 2 variables n1 and n2 have been passed to it




