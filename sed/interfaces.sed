##
## There is no "magic number" at the top of our sed script.
## It is not required because the script is called from the
## command line with the "sed -f" command where the "-f" will
## reference this sed script file.
##
/GigabitEthernet0\//, /\!/ {
	s/\!//
}

##
## End of file...
