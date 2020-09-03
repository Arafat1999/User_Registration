#!/bin/bash

echo "Enter Valid First Name:"
read name

rejax="^[[:upper:]][[:lower:]]{2,24}$"

if [[ $name =~ $rejax ]]
then
	echo "Valid First Name."
else
	echo "Invalid First Name!!!, First Name should be Starting with Capital."
	echo "And Minimum Three Characters should be Entered."
fi
