##
## The following pseudocode represents the if...elif...else control construct:
##
if test
then
	command(s)
elif	test
then
	command(s)
elif	test
then
	command(s)
else
	commands(s)
fi

##
## Old school:
##
if test
then
	command(s)
elif	test
then
	commands(s)
elif	test
then
	commands(s)
else
	commands(s)
fi

or

if [ string/numeric expression ]
then
	command(s)
elif	[ string/numeric expression ]
then
	command(s)
elif	[ string/numeric expression ]
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
elif	[[ string expression ]]
then
	commands(s)
elif	[[ string expression ]]
then
	commands(s)
fi

and...

if (( numeric expression ))
then
	command(s)
elif (( numeric expression ))
then
	command(s)
elif (( numeric expression ))
then
	command(s)
else
	command(s)
fi

##
## End of file...
