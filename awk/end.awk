#!/usr/bin/awk -f
##
## The END statement is executed ONCE, and ONLY ONCE, after input has been read.
## The END statement is most often used to print totals or a finish time upon
## completion of the script.
## You can have multiple END statements and they do not actually need to be at the
## end of the file, they can appear at the start.
##
## Pseudocode: END { statement(s) }
##
END {
	print ""
	print "print STATEMEN - YOUR AWK PROGRAM HAS ENDED\n"
        "date +'%d-%b-%y @ %R'" | getline enddate
	print "Program Complete at: " enddate
	print "----------------------COMPLETE------------------------\n"
	print ""
	print ""
	}

END {
        printf("\n")
        printf("\n")
        printf("printf STATEMENT - AWK PROGRAM HAS ENDED\n")
        "date +'%d-%b-%y @ %R'" | getline enddate
        printf("Program Complete at: " enddate)
        printf("\n")
	printf("----------------------COMPLETE------------------------\n")
        printf("\n")
        printf("\n")
	}

##
## End of file...
