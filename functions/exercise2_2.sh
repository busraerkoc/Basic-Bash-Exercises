#!/bin/bash

function file_count() {
	local D=$1
	local FILE_COUNT=$(ls $D | wc -l)
	echo "$D"
	echo "$FILE_COUNT"
}

file_count /etc
file_count /var
file_count /usr/bin
