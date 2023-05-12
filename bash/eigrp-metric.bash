#!/usr/bin/bash
##
## First, let's prompt the user for their K1 and K3 values...
##
clear
echo -n "Please enter your K1 value (slowest outgoing interface in Kbps): "
read _K1

echo -n "Please enter your K3 value (cumulative path delay in microseconds): "
read _K3

##
## Now, let's convert the K1 and K3 metrics...
##
_C_K1=$(( 10000000 / $_K1 ))
_C_K3=$(( $_K3 / 10 ))

##
## Now, we add the results of the K1 and K3 values together...
##
_K1_PLUS_K3=$(( $_C_K1 + $_C_K3 ))

##
## Finally, we take the sum of the K1 and K3 values and multiply
## by 256...
##
_EIGRP_METRIC=$(( $_K1_PLUS_K3 * 256 ))
echo "Your EIGRP path metric will be: $_EIGRP_METRIC"

##
## End of file...
