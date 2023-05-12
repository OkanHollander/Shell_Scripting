##
## The following pseudocode represents the if...else control construct:
##
if test
then
	command(s)
else
	command(s)
fi

##
## Old school:
##
if test expression
then
	command(s)
else
	commands(s)
fi

or

if [ string/numeric expression ]
then
	command(s)
else
	command(s)
fi

=====================================================================================

##
## New school
##
if [[ string expression ]]
then
	command(s)
else
	commands(s)
fi

and...

if (( numeric expression ))
then
	command(s)
esle
	command(s)
fi

##
## End of file...
