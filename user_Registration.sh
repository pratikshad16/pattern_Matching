#!/bin/bash -x
shopt -s extglob
echo "Welcome to User Registration problem"
namePatt="^[A-Z]{1}[a-z]{3,}$"
emailPatt="^[0-9a-zA-Z]+([+_.-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+([.][a-zA-Z]{2,3}){1,2}$"
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

echo "Enter the email:"
read email
errorMsg="Invalid  email address: please enter the valid one"
validate $email $emailPatt "$errorMsg"

echo "Enter mobile number:"
read mobile
mobilePatt="^[0-9]{2}[ ][0-9]{10}$"
if [[ $mobile =~ $mobilePatt ]]
then
	echo "valid"
else
	echo "Invalid mobile number"
fi
echo "Enter the password:"
read password
passPatt="^[a-zA-Z0-9]*[!@#$%^&*.]{1}[A-Za-z0-9]*$"
if [[ ${#password} -ge 8 ]] && [[ $password ==  *[A-Z]* ]] && [[ $password == *[a-zA-Z]* ]] && [[ $password ==  *[0-9]* ]] && [[ $password =~ $passPatt ]]
then
	echo "valid password"
else
	echo "Invalid password: enter with 1 uppercase 1 numeric value 1 special chracters and minimum 8 char"
fi
