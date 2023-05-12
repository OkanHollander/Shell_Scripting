#!	/bin/bash	
##
##
echo -n "Please enter the port you wish to see: "
read _PORT
_PORT=`echo ${_PORT} | sed 's/[0-9]*\/[0-9]*/0\/4/g'`

cat ./show-run-bash-example | sed -n '/^interface "${_PORT}"/,/^!$/p'
echo "\$_PORT is $_PORT"

##
## End of file...
