#using ssh, copy data from source to destination


#source: /tmp/dummydata
#destination: 192.168.0.112, /tmp/destination_folder


#!/bin/bash

read -p "Enter a path: " path

if [[  -d "$path" ]]
then
	scp -r  /tmp/dummydata   192.168.0.112:/tmp/destination_folder
else
	echo "invalid path"
fi
