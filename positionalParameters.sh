#!/bin/bash
#
#Positional Parameters
## Call this script with at least 10 parameters, for example
# ./scriptname 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10


echo 

echo "the name of this script is \"$0\"."
# Adds ./ for current directory
echo "the name of this script is \"`basename $0`\"."
# strips out path name info (see 'basename') 
#

echo 

if [ -n "$1" ]
then
	echo "parameter #1 is $1" # need quotes to escape # 
fi

if [ -n "$2" ]
then
        echo "parameter #2 is $2" # need quotes to escape #
fi


if [ -n "$3" ]
then
        echo "parameter #3 is $3" # need quotes to escape #
fi


if [ -n "$4" ]
then
        echo "parameter #4 is $4" # need quotes to escape #
fi


if [ -n "$5" ]
then
        echo "parameter #5 is $5" # need quotes to escape #
fi


if [ -n "$6" ]
then
        echo "parameter #6 is $6" # need quotes to escape #
fi


if [ -n "$7" ]
then
        echo "parameter #7 is $7" # need quotes to escape #
fi


if [ -n "$8" ]
then
        echo "parameter #8 is $8" # need quotes to escape #
fi


if [ -n "$9" ]
then
        echo "parameter #9 is $9" # need quotes to escape #
fi


if [ -n "${10}" ] # Parameters > $9 must be enclosed in {brackets}.
then
        echo "parameter #10 is ${10}" 
fi


echo "-----------------------------------"
echo "All the command-line parameters are: "$*""

if [ $# -lt "$MINPARAMS" ]
then 
	echo 
	echo "This script needs at least $MINPARAMS command-line arguments!"
fi
echo

exit 0

