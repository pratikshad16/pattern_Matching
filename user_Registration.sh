#!/bin/bash -x
shopt -s extglob
echo "Welcome to User Registration problem"
namePatt="^[A-Z]{1}[a-z]{3,}$"
function validate () {
if [[ $1 =~ $2 ]]
then
	echo "Valid"
else
	echo $3
fi
}
echo "Enter the first name:"
read firstName
errorMsg="Invalid  First name:first Name Starts with Capital letter and minimum 3 chracters"
validate $firstName $namePatt "$errorMsg"

echo "Enter the last name:"
read lastName
errorMsg="Invalid  Last name: Last Name Starts with Capital letter and minimum 3 chracters"
validate $lastName $namePatt "$errorMsg"
