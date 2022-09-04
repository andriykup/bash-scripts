#!/bin/bash

# Author: Andriy Kupinskyy
# Created: 4 Septebmer 2022
# Last Modified: 4 September 2022

# Description:
# Converts temp F AND C.
# Usage:
# ...

while getopts "f:c:" opt; do
case "$opt" in
	c) result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc) ;;
	f) result=$(echo "scale=2; ($OPTARG - 32) * (5 / 9)" | bc) ;;
	\?);;  #exception, getopts outs ? in case of invalid option was provided.
esac
done
echo "$result"
