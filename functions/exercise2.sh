#!/bin/bash

function file_count() {
	local COUNT=0
	cd $1
	echo "$1"
	for FILE in $(ls)
	do
		((COUNT++))
	done
	echo "$COUNT"
}
file_count /etc
file_count /var
file_count /usr/bin
