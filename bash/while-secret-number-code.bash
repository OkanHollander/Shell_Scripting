#!/usr/bin/bash
##
##
clear

echo -n "Which rock MEGA-group played at Cisco Live (Networkers) in 2007? "
read _ANSWER

while [[ $_ANSWER != Kiss ]]
do
	echo -n "No, almost...try again: "
	read _ANSWER
done

echo "You got it!!! Rock and Roll All Night!!!"

##
## End of file...
