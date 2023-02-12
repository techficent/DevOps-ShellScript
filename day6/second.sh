#objective: copy all files whose format is .txt from 
#given location into /tmp/backups


read -p "Enter a path: "  path

if [[  -d "$path"   ]]
then
	find "$path"  -maxdepth 1 -name "*.txt" -exec cp -pr {} /tmp/backups \;
else
	echo "No files could be copied as path is invalid"
fi


