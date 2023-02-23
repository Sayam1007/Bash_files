#!/bin/bash
#shell script to check if the file shadow exits or not

if [ -e /etc/shadow ];
then 
echo "Shadow passwords are enabled"

if [ -w /etc/shadow ];
then
echo "You have permissions to edit"

else
echo "You dont have permissions to edit"
fi
fi
