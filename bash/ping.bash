#!/usr/bin/bash
##
##
echo -n "Who would you like to ping: "
read _DEST

ping -q -c10 ${_DEST} > /dev/null 2>&1

if [ $? == 0 ]
then
	echo "Good News!  ${_DEST} is ALIVE and KICKING!!!"
else
	echo "This just in...${_DEST} is NOT RESPONDING!!!"
fi

##
## End of file...
