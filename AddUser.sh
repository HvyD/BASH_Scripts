#! /bin/bash

#Automating Adding a user Script

#Start and Add USER parameters
echo "Start of Script:$0"
echo "Please Enter The Name of User:$1"

adduser --home /$1 $1
