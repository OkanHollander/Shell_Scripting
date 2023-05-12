#!/bin/bash
##
##
trap 'echo Thank You for Playing Magic Number!!!' EXIT
trap 'echo WOW!!!' EXIT

magicnumber=$((RANDOM%10+1))
echo 'Guess a number between 1 and 10: '
while read -p 'Guess: ' guess ; do
	sleep 3
	if [ "$guess" = $magicnumber ]; then
		echo 'You got it!!!'
		exit
	fi
	
	echo 'WRONG!!!'
done

##
## End of file...
