all: README.md

README.md: 
	
	echo "Title of the Project: Guessing game" > README.md 

	echo "Date and Time make was run:"`date +'%y.%m.%d   %H:%M:%S'`    >> README.md
	
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
