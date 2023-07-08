# associative array

# hashing (hash tables, hash functions, hash values)
declare -A employee


employee[name]=harshit
employee[age]=27
employee[location]=Mumbai

echo "${employee[name]}" #1 shot access to data

#declare an empty associated array
declare -A car

#initialize array with 3 key value pairs
car=( [brand]=Maruti [model]=Celerio [colour]=red   )

#add one more entry to array
car[year]=2020

#loop over array
for key in "${!car[@]}"
do
	echo "Key found: $key"
	echo "Value associated with this key: ${car[$key]}"

done

#only loop over values
for i in "${car[@]}"
do 
	echo "Value found: $i"
done






