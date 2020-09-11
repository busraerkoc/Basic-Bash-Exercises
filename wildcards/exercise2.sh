#!/bin/bash
DATE=$(date +%F)
read -p "Please enter a file extension:" EXTENSION
read -p "Please enter a file prefix:(Default is ${DATE})" PREFIX

if [[ -z $PREFIX ]]
then
	PREFIX="$DATE"
fi

for FILE in *.${EXTENSION}
do
	echo "Renaming ${FILE}.${EXTENSION} to ${PREFIX}${FILE}.${EXTENSION}"
	mv ${FILE} ${PREFIX}${FILE}
done
