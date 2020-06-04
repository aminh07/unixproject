if [[ $(expr $1 % 2) -eq 0 ]]
then
	echo 'how proper'
else
	echo 'how improper' $1
fi
