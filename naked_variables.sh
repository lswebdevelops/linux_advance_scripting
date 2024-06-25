#!/bin/bash
#Naked variables
#

echo 

# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.
#
# Assignment
#
a=879
echo "The value of \"a\" is $a."

# assignment using 'let'
let a=16+5

echo "the value of \"a\" is now $a."

echo 

# in a 'for' loop (relly, a type of disquised assignment):
echo -n "Values of \"a\" in the loop are: "
for a in 7 8 9 11
do
	echo -n "$a "
done

# In a 'read' statement (also a type of assignment):
 echo
echo -n "Enter \"a\" "
read a 
echo "The value of \"a\" is now $a."

echo 
exit 0

