
filecount=$(eval ls -l | grep '^[-l]' | wc -l)
loopflag=1

function compareresult {

	if [[ $1 -gt $2 ]]
	then
		echo 'Your guess is too high'
	elif [[ $1 -lt $2 ]]
	then
		echo 'Your guess is too low'
	else
		echo 'Congratulations!!! Correct guess'
		loopflag=0
	fi
}

while [[ $loopflag -eq 1 ]]
do
	echo "How many files in current directory?"
	read responsefilecnt
	compareresult $responsefilecnt $filecount

done
