#!/bin/bash
# SCRIPT: fib-rec.bash
# USAGE: fib-rec.bash [number]
# PURPOSE: Generate the Fibonacci sequence....
##
#####################################################################
# Arguments Checking #
#####################################################################
##

if [ $# -eq 1 ]
then
Num=$1
else
echo -n "Enter a Number : "
read Num
fi

#####################################################################
# Define Functions Here #
#####################################################################

Fibonacci()
{

case $1 in
0|1) printf "$1 " ;;
*) echo -n "$(( $(Fibonacci $(($1-2)))+$(Fibonacci $(($1-1))) )) ";;
esac

#$(( )) construct is used instead of expr command for doing addition.
#$( ) constrict is used instead of back ticks.

}

#####################################################################
# Main Script Starts Here #
#####################################################################

echo "The Fibonacci sequence for the number $Num is : "

for (( i=0; i<=$Num; i++ ))
do
Fibonacci $i #Calling function Fibonacci
done

echo

##
## End of file...
