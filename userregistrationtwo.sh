#!/bin/bash

echo "Enter Valid First Name:"
read name
echo "Enter Valid Last Name:"
read lastname

rejax="^[[:upper:]][[:lower:]]{2,24}$"

rejaxLast="^[[:upper:]][[:lower:]]{2,24}$"

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

