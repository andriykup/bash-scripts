#!/bin/bash

# Author: Andriy Kupinskyy
# Created: 4 Septebmer 2022
# Last Modified: 4 September 2022

# Description:
# 

while getopts "m:s:" opt; do
case "$opt" in
	m) minutes=$(( $OPTARG * 60 ));;
	s) seconds=$(( $OPTARG ));;
	\?);;
esac
done
total_seconds=$(( minutes + seconds ))
while [ $total_seconds -ne 0  ]; do
	echo "$total_seconds"
	total_seconds=$(( $total_seconds - 1))
	sleep 1s
done
echo "Time's Up!"
