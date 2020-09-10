#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see?" LINES
LINE_NUM=1
while read LINE
do
	if [[ $LINE_NUM -le $LINES ]]
	then
		echo "${LINE_NUM}: ${LINE}"
		((LINE_NUM++))
	else
		break
	fi
done < /etc/passwd
