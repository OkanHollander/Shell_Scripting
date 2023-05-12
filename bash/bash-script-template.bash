#!/usr/bin/bash
##
####################################################################
##
##	Author(s):
##
##	Title:
##
##	Date:
##
##	Purpose:
##
##	Release Note(s):
##
####################################################################
##
##
function usage ()
{
	printf "Usage: %s [ options | options ] file1, file2...file\n" $0 2>/dev/null
}

if [ $# != 2 ]
then
	usage
else
	echo "Your two (2) arguments were $1 and $2 on the command line."
fi

##
## End of file...
