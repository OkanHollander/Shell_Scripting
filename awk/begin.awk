#!/usr/bin/awk -f
##
## The BEGIN statement is executed ONCE, and ONLY ONCE, before any input has been read.
## Use of the BEGIN statement is to set to gain control of initialization of your awk
## script and is most often used to change the default built-in variables (i.e., FS). 
## You can have multiple BEGIN statements and they do not actually need to be at the
## start of the file, they can appear at the end.
##
## Pseudocode: BEGIN { statement(s) }
##
BEGIN {
	system ( "clear" )
	system ( "sleep 1" )
	print ""
	print "print STATEMENT - AWK PROGRAM IS STARTING"
	"date +'%d-%b-%y @ %R'" | getline startdate
	print startdate
	print "------------------------HEADER----------------------\n"
	FS = ":"
	OFS = "\t"
	print "Your Field Separator is the-> FS character!"
	print ""
	print ""
	system ( "sleep 1" )
	system ( "clear" )
	}

BEGIN {
	system ( "sleep 1" )
	system ( "clear" )
	printf("\n")
	printf("\n")
	printf("printf STATEMENT - AWK PROGRAM IS STARTING\n")
	"date +'%d-%b-%y @ %R'" | getline startdate
	printf(startdate)
	printf("\n")
	printf("\t------------------HEADER--------------------\n")
	FS = ":"
	OFS = "\t"
	printf("Your Field Separator is the-> %s character!\n", FS)
	printf("\n")
	system ( "sleep 1" )
	system ( "clear" )
	}

##
## End of file...
