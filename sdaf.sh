# Warning:
# -------
# This script uses quite a number of features that will be explained
#+ later on.
# By the time you've finished the first half of the book,
#+ there should be nothing mysterious about it.
LOG_DIR=/var/log
ROOT_UID=0 # Only users with $UID 0 have root privileges.
LINES=50 # Default number of lines saved.
E_XCD=86 # Can't change directory?
E_NOTROOT=87 # Non-root exit error.