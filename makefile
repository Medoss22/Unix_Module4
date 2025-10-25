README.md:
	echo "#game of guessing" > README.md
	echo "#date: $$(date)" >> README.md
	echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: all
all: README.md
