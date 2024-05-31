#!/bin/bash
# Reading lines in /etc/fstab. 
#
#
#
File=/etc/fstab

{ 
read line1
read line2
} < $File
clear
echo  "Fist line in $File is:"
echo  "$line1"
echo
echo  "Second line in $File is:"
echo  "$line2"
echo
echo  "*/*/*/*/*/*/*/*/*/*/*/*/*"
echo
exit 0




