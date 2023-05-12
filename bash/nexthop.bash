#!/usr/bin/bash
##
set +o noclobber
clear

echo -n "Please enter the IPv4 prefix for which you would like to see the next hop IP: "
read _IP

#echo -n "Please enter the RVIEWS server you would like to use (ex. rviews.xxx.xxx): "
#read _RVIEWS
#export _RVIEWS

~/bin/expect/nexthop.exp "$_IP" >| /tmp/nexthop.12232014
#NEXT_HOP_IP=`~/bin/expect/nexthop.exp "$_IP" | grep -F '*' | awk '{ print $2 }'`
echo "Your Next Hop IP for $_IP will be: `cat /tmp/nexthop.12232014 | grep -G '\* [0-9]' | awk '{ print $2 }' | sed -n 's/,//p'`"

##
## End of file...
