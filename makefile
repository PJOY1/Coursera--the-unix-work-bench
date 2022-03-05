README.md:
	{ \
	touch README.md ;\
	echo "Title of the Project: Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md ;\
	echo "\nDate make ran at:" >> README.md
	date >> README.md
	num_lines=$$(wc -l < guessinggame.sh);\
	echo "Guessinggame.sh script contains $$num_lines lines of code."  >> README.md ;\
	}
clean:
	rm README.md
