#!
##
_ID=`id | awk -F'[=(]' '{ print $2 }'`

echo "Your userid is $_ID"

if [[ _ID -eq 0 ]]
then
	echo "You are the all-powerful ROOT user!!!"
elif [[ _NUM -eq 1 ]]
then
	echo "Your userid is $_ID"
else
	echo "Your are NOT superuser..."
fi
