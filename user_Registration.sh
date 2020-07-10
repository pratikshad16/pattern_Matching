#!/bin/bash -x
shopt -s extglob
echo "Welcome to User Registration problem"
echo "Enter the first name:"
read name
namePatt="^[A-Z]{1}[a-z]{2,}$"
if [[ $name =~ $namePatt ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
