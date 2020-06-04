filecount=$(eval ls -l | grep '^[-l]' | wc -l)
loopflag=1

function compareresult {

	if [[ $1 -gt $2 ]]
	then
		echo 'Your guess is too high'
	elif [[ $1 -lt $2 ]]
	then
		echo 'Your guess is too low'
	elif [[ $1 -eq $2 ]]
	then
		echo 'Congratulations!!! Correct guess'
		loopflag=0
	else
		echo 'your input is incorrect'
	fi
}

while [[ $loopflag -eq 1 ]]
do
	echo "How many files in current directory?"
	read responsefilecnt
	if ! [[ $responsefilecnt =~ ^[0-9]+$ ]]
	then
		echo "Please enter integers only"
	else
		compareresult $responsefilecnt $filecount
	fi
done
