#arrays: (a collection of items) 

#for loop: execute same commands multiple times!



# Objective: Find details of user accounts whose usernames are stored in an array!

userNames=(harshit root)


#for a name present in userNames array
for name in "${userNames[@]}"
do
	getent passwd $name
done	
