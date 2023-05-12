#!/usr/bin/bash
##
##
echo -n "Please enter your favorite number: "
read _NUM

if [[ _NUM -ne 2 ]]
then
	echo "It wasn't 2..."
fi

if [ $_NUM = 5 ]
then
	_NUM=$((_NUM+250))
	echo "You entered $_NUM and I added 250!"
fi

if test $# == 2
then
	echo "You entered two args old school style"
fi
