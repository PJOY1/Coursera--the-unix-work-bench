#!/usr/bin/env bash

count=`ls -1|wc -l`

guessfilecount () {

if [[ $response -gt $count ]]
then
	echo 'The number of files you guessed is high. please try again!'
fi
if [[ $response -lt $count ]]
then
	echo 'The number of files you guessed is low. please try again!'
fi
if [[ $response -eq $count ]]
then
	echo 'You guessed the correct file count. Congrats'
	filecounter=-1
	exit	
fi
}

filecounter=1
while [[ $filecounter ]]
do
	echo 'Please guess the number of files in the current directory and press the Enter Key:'
	read response

	echo "The entered file count is : $response"
	guessfilecount

	
done
