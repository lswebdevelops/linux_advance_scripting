#!/bin/bash
#background-loop.sh
#

for i in 1 2 3 4 5 6 7 8 9 10
do
	echo -n "$i "
       	sleep 1
done & # run this loop in background.
	# will sometimes execute after second loop.
	#
	
echo  # this 'echo'sometimes will not display.

for i in 11 12 13 14 15 16 17 18 19 20  # second loop .
do
	echo -n "$i " 
       	sleep 1
done


echo # this 'echo' sometimes will not display. 

# ======================================================
# The expected output from the script:
# 1 2 3 4 5 6 7 8 9 10
# 11 12 13 14 15 16 17 18 19 20
# Sometimes, though, you get:
# 11 12 13 14 15 16 17 18 19 20
# 1 2 3 4 5 6 7 8 9 10 bozo $
# (The second 'echo' doesn't execute. Why?)
# Occasionally also:
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
# (The first 'echo' doesn't execute. Why?)
# Very rarely something like:
# 11 12 13 1 2 3 4 5 6 7 8 9 10 14 15 16 17 18 19 20
# The foreground loop preempts the background one.
exit 0
# Nasimuddin Ansari suggests adding sleep 1
#+ after the echo -n "$i" in lines 6 and 14,
#+ for some real fun.

