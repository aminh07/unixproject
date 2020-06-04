readme.md:
	touch README.md
	echo "#This is Guessing game" >>README.md
	echo "The game was created: " >>README.md
	stat -c %y README.md >>README.md
	wc -l 'guessinggame.sh' | egrep -o '^[0-9]+' >>README.md
