#Objective: Print Name, User Id and home folder for all users in descending order of userId from passwd file


#step 1: sort the data and save output in a variable

#step 2: print the username (column 1), userId (column 3), home folder (column 6)


ans=$(    sort -t:   -k 3  -n   -r    /etc/passwd  )


echo "$ans" | awk -F: '{print $1, $3, $6}' | column -t -s" " --table-columns "User Name,User Id,Home Directory"

