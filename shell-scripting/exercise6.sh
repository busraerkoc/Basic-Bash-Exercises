#!/bin/bash

read -p "Please enter the name of the file or directory:" FILE

if [ -f FILE ]
then
	echo "${FILE} is a regular file."
elif [ -d FILE ]
then
	echo "${FILE} is a directory."
else
	echo "${FILE} is other type of file."
fi

ls -l $FILE 
