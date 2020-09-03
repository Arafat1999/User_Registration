#!/bin/bash

echo "Enter Valid First Name:"
read name
echo "Enter Valid Last Name:"
read lastname
echo "Enter Valid Email:"
read email

rejax="^[[:upper:]][[:lower:]]{2,24}$"

rejaxLast="^[[:upper:]][[:lower:]]{2,24}$"

rejaxEmail="^[a-zA-Z0-9_%+-]+[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"

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
