#!/bin/bash
# this is a simple comparison script for using the "-" symble. 
#


file1=$1
file2=$2
a=$3
b=$4
c=$5
d=$6


if [ $file1 -ot $file2 ]
then
	echo "File $file1 is older then $file2."
fi

if [ "$a" -eq "$b" ]
then
	echo "$a is equal to $b."
fi

if [ "$c" -eq 24 -a "$d" -eq 47 ]
then
	echo "$c equals 24 and $d equals 47."
fi

param2=${param1:-$DEFAULTVAL}


