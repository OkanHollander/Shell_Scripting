#!		/usr/bin/bash	
##
echo "The name of this script is $0 - that is a.k.a: The Basename"
echo All of the arguments on the command line are: $*.
echo The first argument that I see is $1
echo The second argument that I see is $2
echo The total number of arguments I see is $#
_OLD_ARGS=$*
set Travis Dylan Halle	## Resetting the positional parameters...
echo All the positional parameters are now $*.
echo The number of positional parameters is now: $#.
echo See you later $1
set $(date)
echo The date is $2 $3, $6.
echo "The value of the variable \$_OLD_ARGS is $_OLD_ARGS"
set $_OLD_ARGS
echo $1 $2 $3

while [ $# != 0 ]
do
	echo "\$1 is $1"
	shift
done

##
## End of file...
