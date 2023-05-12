#!/usr/bin/bash
##
for _HOSTS in 192.168.1.{1..25}
do
	ping -q -c1 ${_HOSTS} > /dev/null 2>&1
	if [ $? -eq 0 ]
	then
	     echo "Node @ ${_HOSTS} is pingable!"
	else
	     echo "PING FAILED TO: ${_HOSTS}" | mailx -s "${_HOSTS} is down." tpbonfi
	fi
done

##
## End of file...
