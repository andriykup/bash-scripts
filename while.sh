#!/bin/bash

# Author: Andriy Kupinskyy
# Created: 4 Septebmer 2022
# Last Modified: 4 September 2022

# Description:
# 

read -p "Enter your number: " num

while [ $num -gt 10 ]; do
	echo "Your number is $num and it is greater then 10."
	num=$(( $num - 1 ))
	sleep 0.5s
done
