#!/bin/bash
checkGuess()
{
	if [ "$1" -lt "$filesNumber" ]; then
		echo "too low, try again"
	elif [ "$1" -gt "$filesNumber" ]; then
		echo "too high, try again"
	else
		echo "thats right, good job"
		exit 0
	fi
}

filesNumber=$(ls -1 | wc -l)
echo "guess the number of files in this repo"

while true; do
	read -p "enter you number: " guess
	if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
		echo "thas not a number"
		continue
	fi
	checkGuess "$guess"
done
