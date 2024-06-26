#!/bin/bash
# int-or-string.sh
a=2334 # Integer.
let "a += 1"
echo "a = $a " # a = 2335
echo # Integer, still.
b=${a/23/BB} # Substitute "BB" for "23".
# This transforms $b into a string.
echo "b = $b" # b = BB35
declare -i b  # declaring it an integer doesn't help.
echo "b = $b"  # b =BB35


let "b += 1"    # BB35 +1

echo "b = $b"  # b = 1
echo           # bash sets the "integer value" of a string to 0.

c=BB34
echo "c = $c"       # c = BB35
d=${c/BB/23} # Substitute "23" for "BB".# This makes $d an integer.

echo "d = $d"
let "d += 1"
echo "d = $d" # d = 2335
echo

 # what about null variables? 

e=''
echo "e = $e" # e = 
let "e += 1"  # arithmetic operations allowed on a null variable? 
echo "e = $e"  # e = 1 
echo # "Null variable transformed into an integer." 


# what about ndeclared varibles? 
echo "f = $f"  # f = 
let "f += 1"   
echo "f = $f"  # f = 1
echo # undeclared variable tranformed into an integer 

# 
# however... 
#
#let "f /= $undeclared_variable" # divide by zero? 
# let: f /= : syntax errror: operand expected (error token is " " ) 
# synstax error!@ varialbe $undeclared_variable is not set to zero here! 
#
# but still ... 
#let "f /= 0"

# let : f /=0: division by 0 (error token is "0")
# # expected behavior.
#
# # Bash (usually) sets the "integer value" of null to zero
#+ when performing an arithmetic operation.
# But, don't try this at home, folks!
# It's undocumented and probably non-portable behavior.
# Conclusion: Variables in Bash are untyped,
#+ with all attendant consequences.
exit 0
