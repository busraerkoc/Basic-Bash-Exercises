#!/bin/bash
while true
do
	echo "1. Show disk usage."
	echo "2. Show system uptime."
	echo "3. Show the users logged into the system."
	read -p "What would like to do? (Enter q to quit.)" CHOICE
	case "$CHOICE" in
		1)
			df -h
			;;
		2)
			uptime
			;;
		3)
			who
			;;
		q)
			echo "Goodbye!"
			break
			;;
		*)
			echo "Invalid option"
			;;
	esac
done
