#!/usr/bin/bash
##
##
if [[ $# -ne 2 ]]
then
	echo "New School: Usage: $0 arg1 arg2"
fi

if [ $# = 2 ]
then
	echo "You entered two args"
fi

if test $# == 2
then
	echo "You entered two args old school style"
fi
