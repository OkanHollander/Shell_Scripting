#!/usr/bin/awk -f
##
##
BEGIN {
	print "=====================START EMPLOYEE PAYROLL=========================\n"
      }
	/^[A-DF-Z]+/{ print $1 "\t\t\t\t\t" $3 * $4 }

END {
	print "=====================END EMPLOYEE PAYROLL=========================\n"
    }

##
## End of file...
