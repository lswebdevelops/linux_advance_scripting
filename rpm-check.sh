#!/bin/bash
# rpm =check.sh
#
#Queries an rpm file for description, listing,
#+ and whether it can be installed.
#Saves output to a file.
#
#this script illustrates using a code block.
#
#
SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
	echo "Usage: `basename $0` rpm-file"
	exit $E_NOARGS
fi

{ # Begin code block.
	echo 
	echo "Archive Description: "
	rpm -qpi $1	# Query description.
	echo
	echo "Arquive Listing:"
	rpm -qpl $1 	# Query whether rpm file can be installed.
	if [ "$?" -eq $SUCCESS ]
	then
		echo "$1 can be installed."
	else
		echo "$1 cannot be installed."

	fi
	echo	# end code block.
} > "$1.test" 	# Redirects ouput of everything in block to file.

echo "Results of rpm test in file $1.test"


# see rpm man page for explanation of options.

exit 0

