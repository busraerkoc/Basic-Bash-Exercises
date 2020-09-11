#!/bin/bash

function file_count() {
	local COUNT=0
	for FILE in $(ls)
	do
		((COUNT++))
	done
	echo "$COUNT"
}

file_count
