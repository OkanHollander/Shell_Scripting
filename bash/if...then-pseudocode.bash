##
## The following pseudocode represents the if...then control construct:
##
if test
then
	command
	command
	...
fi

##
## Old school:
##
if test expression
then
	command
fi

or

if [ string/numeric expression ]
then
	command
fi

=====================================================================================

##
## New school
##
if [[ string/numeric expression ]]
then
	command
fi

and...

if (( numeric expression ))
then
	command
fi

##
## End of file...
