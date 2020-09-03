#!/bin/bash

echo "Enter Valid First Name:"
read name
echo "Enter Valid Last Name:"
read lastname
echo "Enter Valid Email:"
read email
echo "Enter Valid Phone Number(Start with Country Code Along with 10 Digit Phone Number):"
read phone
echo "Enter Valid Password(Minimum 8 Characters):"
read password

rejax="^[[:upper:]][[:lower:]]{2,24}$"

rejaxLast="^[[:upper:]][[:lower:]]{2,24}$"

rejaxEmail="^[a-zA-Z0-9_%+-]+[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"

rejaxPhone="^[0-9]{2}[ ]{1}[0-9]{10}$"

rejaxPassword="^[0-9a-zA-Z]{8,}$"

if [[ $name =~ $rejax ]]
then
   echo "Valid First Name."
else
   echo "Invalid First Name!!!, First Name should be Starting with Capital."
   echo "And Minimum Three Characters should be Entered."
fi

if [[ $lastname =~ $rejaxLast ]]
then
   echo "Valid Last Name."
else
   echo "Invalid Last Name!!!, Last Name should be Starting with Capital."
   echo "And Minimum Three Characters should be Entered."
fi
if [[ $email =~ $rejaxEmail ]]
then
   echo "Valid Email."
else
   echo "Invalid Email!!!"
fi


if [[ $phone =~ $rejaxPhone ]]
then
   echo "Valid Phone Number."
else
   echo "Invalid Phone Number."
fi

if [[ $password =~ $rejaxPassword ]]
then
   echo "Valid Password."
else
   echo "Invalid Password!!!"
fi
