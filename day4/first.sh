#objective: find the user Id of the account whose username is given by the user

# step 1: take username as input
# step 2: check if name is valid
#		if yes, find the user Id for this account
#		solution: find the getent output for user. Print 3rd column from this output
#		if not, print error msg for the user


#1

read -p "Enter a user name: " userName


id "$userName" &>/dev/null

returnValue=$?

if [[      "$returnValue" -eq 0        ]]
then
	ans=$(getent passwd $userName)
	echo $ans | awk -F: '{ print $3  }' 
else
	echo "Username is invalid. Account $userName not found"  
fi









