#!/bin/bash

if [[ $# -lt 2 ]]; then
	echo Not enough arguments provided.
	exit 1
fi

w=$1

shift

while [[ $# -gt 0 ]]
do

	if test -f "$1"; then
		word_count=$(cat $1 | grep -oi "$w" | wc -l)
		echo Word $w appeared $word_count times in the $1 file.

		even_numbers_count=$(cat $1 | grep -oi "[02468]" | wc -l)
		echo $even_numbers_count even numbers in the file $1.
	
	else
		echo $1 is not a file.
	fi	

	shift
done
