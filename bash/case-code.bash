#!/usr/bin/bash
##
##
clear
echo -n "Please select a menu option below: "

cat <<- HERE

	1. Print the winner of the Super Bowl
	2. Print the winner of the English Premier League
	3. Print the winner of La Liga
	4. Show me the current system date and time
	5. Show me every file that hasn't been modified in 45+ days
	6. Show me all current FW connections

HERE

read _CHOICE

case "$_CHOICE" in
	
	1) echo "The New England Patriots!"
	   ;;

	2) echo "Arsenal!"
	   ;;

	3) echo "Barcelona!"
	   ;;

	4) date
	   ;;

	5) find / -atime 45 -print 2>/dev/null
	   ;;

	6) ~/bin/expect/fw-conns.exp
	   clear
	   echo "Thank you for checking the firewall!"
	   ;;
esac

##
## End of file...
