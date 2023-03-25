#!/bin/bash

read -p "Enter volume driver name: " volumeName
read -p "Enter absolute path of folder to be mapped with driver: " location
read -p "Enter image to be used to launch container: " image


if [[    -d "$location"    ]]
then
	docker run -it \
	--mount source="$volumeName",target="$location" "$image"
else
	echo "Invalid volumeName,location or image"

fi
