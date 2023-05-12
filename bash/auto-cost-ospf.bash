#!/usr/bin/bash
##
## Clear screen and get input from user...
##
/usr/bin/clear
echo -n "Enter the Desired OSPF "auto-cost reference-bandwidth" in Gbps (i.e., 1, 10, 40, 100, etc.): "
read _OCRB

##
## Now, check to see if the auto-cost reference-bandwidth is greater than the maximum allowed setting...
##
if (( $_OCRB > 4294 ))
then
	/usr/bin/clear
	echo "<auto-cost reference-bandwidth> must be less than 4294"
	echo ""
	exit 99
fi

##
## Convert the user-entered Gbps value to bits-per-second (easier for us to do the conversion here)
##
_OCRB_BPS=$(( $_OCRB * 1000000000 ))

##
## Okay, now for each of our desired links speeds (in bps) calculate the new OSPF auto-cost reference-bandwidth...
##
for _LINK_SPEED in 64000 128000 256000 512000 1544000 10000000 100000000 1000000000 10000000000 40000000000 100000000000 1000000000000
do
	_NEW_ACRB=$(( $_OCRB_BPS / $_LINK_SPEED ))

	if (( _NEW_ACRB < 1 ))
	then
		_NEW_ACRB=1
	elif (( _NEW_ACRB > 65535 ))
	then
		_NEW_ACRB=65535
	fi
	
	echo "With an OSPF auto-cost reference-bandwidth of ${_OCRB}Gbps, a link speed of ${_LINK_SPEED}bps will have a cost of: $_NEW_ACRB"
done 

##
## End of file...
