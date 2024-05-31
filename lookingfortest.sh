#!/bin/bash
# Looking for directories using the "," separator  
for file in $HOME/testing/{,test/}*/*testing* 
	#fild all executalbe files ending in "calc"
	#+ in / bin /adn /usr/bin directories.
do 
	if [ -x "$file" ]
	then
		echo $file
	fi
done


