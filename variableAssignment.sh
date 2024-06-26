#!/bin/bash
#
## simple case 
#

a=23
echo $a
echo
b=$a

echo $b 
echo 
# Now, getting a little bit fancier (command substitution).
a=`echo Hello!`  # assigns result of 'echo' command to 'a' ...
echo $a
# Note that including an exclamation mark (!) within a
#+ command substitution construct will not work from the command-line,
#+ since this triggers the Bash "history mechanism."
# Inside a script, however, the history functions are disabled.
#
a=`ls -l` # Assigns result of 'ls -l' command to 'a'
echo $a   # Unquoted, however, it removes tabs and newlines.
echo
echo "$a"  # The quoted variable preserves whitespace.
           # (See the chapter on "Quoting.")
	 
exit 0

