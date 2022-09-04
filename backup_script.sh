#!/bin/bash

# Author: Andriy Kupinskyy
# Created: 4 Septebmer 2022
# Last Modified: 4 September 2022

# Description:
# Creates a backup in the current directory of
# all files in the home directory

echo "Hello, ${USER^}"
echo "I will now back up your home directory, $HOME"

currentdir=$(pwd)

echo "I will create and save the backup file in $currentdir"

tar -cf "$currentdir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" $HOME 2>/dev/null

echo "Backup completed successfully"
echo "Have a nice day :)"
exit 0
