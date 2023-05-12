#!	/bin/bash	-
##
## First, RIGHT-justify a string...
##
printf "%05d\n" 15
printf "%010d\n" 15
printf "%x %#x\n" 15 15
printf "%x %#x\n" 16 16
printf "%x %#x\n" 10 10
printf "%.5d\n" 34
printf "%.55d\n" 34
printf "%.55f\n" 34
printf "%.5f\n" 34
##
##
printf "Enter your username: "
read username
printf "You entered: %25s\n" $username
