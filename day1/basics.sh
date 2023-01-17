#!/bin/bash

#Objective: Ask user for a location. Show all files from that location

#step1: ask user for an input--->location

#step2: use ls command with given location to show output


read  -p   "Please enter an absolute location:  "   location

ls   $location


