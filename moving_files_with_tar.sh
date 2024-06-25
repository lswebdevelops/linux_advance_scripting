#!/bin/bash
#moving files from one directory to another 
#using tar 


(cd $HOME/sourcedir && tar cf - . ) | (cd $HOME/destdir && tar xpvf -)
rm -rf $HOME/sourcedir/* # cleans the source directory 

# Move entire file tree from one directory to another
#
# 1) cd /source/directory
# Source directory, where the files to be moved are.
# 2) &&
# "And-list": if the 'cd' operation successful,
# then execute the next command.
# 3) tar cf - .
# The 'c' option 'tar' archiving command creates a new archive,
# the 'f' (file) option, followed by '-' designates the target file
# as stdout, and do it in current directory tree ('.').
# 4) |
# Piped to ...
# 5) ( ... )
# a subshell
# 6) cd /dest/directory
# Change to the destination directory.
# 7) &&
# "And-list", as above
# 8) tar xpvf -
# Unarchive ('x'), preserve ownership and file permissions ('p'),
# and send verbose messages to stdout ('v'),
# reading data from stdin ('f' followed by '-').
#
# Note that 'x' is a command, and 'p', 'v', 'f' are options.
#
# Whew!
#
#
# More elegant than, but equivalent to:
# cd source/directory
# tar cf - . | (cd ../dest/directory; tar xpvf -)
#
# Also having same effect:
# cp -a /source/directory/* /dest/directory
# Or:
# cp -a /source/directory/* /source/directory/.[^.]* /dest/directory
# If there are hidden files in /source/directory.
#bunzip2 -c linux-2.6.16.tar.bz2 | tar xvf -
# --uncompress tar file-- | --then pass it to "tar"--
# If "tar" has not been patched to handle "bunzip2",
#+ this needs to be done in two discrete steps, using a pipe.
# The purpose of the exercise is to unarchive "bzipped" kernel source.
#Note that in this context the "-" is not itself a Bash operator, but rather an option recognized
