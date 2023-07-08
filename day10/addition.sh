
trap 'date' DEBUG
read -p "Enter a number: " n1
read -p "Enter another number: " n2

# 0 1 2
exec 5> demo.txt #create file descriptor 5 and connect it to demo.txt

BASH_XTRACEFD="5"
echo $((  "$n1" + "$n2"    ))
echo "this is a demo"


echo "goodbye"
