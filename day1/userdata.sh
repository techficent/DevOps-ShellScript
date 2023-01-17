#!/bin/bash


#Objective: Ask user to provide a user name. Find entry of this user name in /etc/passwd file


#step 1: ask user for a username. save this to a variable

#step 2: use getent command with username from step 1


read -p "Enter a username: " userName 


getent     passwd       $userName
