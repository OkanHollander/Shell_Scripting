#!/usr/bin/awk -f
##
##
BEGIN { 
	print ""
	print "----------------------PASSWORD CHECKER RUNNING NOW----------------------\n"
	FS = ":"
	}

##
## Are there 7 fields...if not, notfiy the administrator...
##
NF != 7 {
	printf("Line: %d, does NOT have 7 fields: %s\n", NR, $0)
	}

##
## Does the LOGIN ID field contain any non-alphanumeric characters...
##
$1 ~ /[^A-Za-z0-9]/ {
	printf("NON-alphanumeric LOGIN ID on Line %d %s\n", NR, $0)
	}

##
## Is the password field missing...
##
$2 == "" {
	printf("Line %d, NO PASSWORD found: %s\n", NR, $0)
	}

##
## Does the UID field have a non-numeric value in it...
##
$3 ~ /[^0-9]/ {
	printf("Line %d, NON-NUMERIC UID found: %s\n", NR, $0)
	}

##
## Does the GID field have a non-numeric value in it...
##
$4 ~ /[^0-9]/ {
	printf("Line %d, NON-NUMERIC GID found: %s\n", NR, $0)
	}

##
## Is the login directory NOT start with a forward slash "/"
##
$6 !~ /^\// {
	printf("Line %d, INVALID login directory found: %s\n", NR, $0)
	}

##
## Is the default login shell valid and does it begin with a forward slash "\"...
##
$7 !~ /^\// {
	printf("Line %d, INVALID login shell found: %s\n", NR, $0)
	}

END {
	print ""
	print "--------------------------RUN COMPLETE-------------------------------\n"
	}

##
## End of file...
