all: readme

readme:
	echo "Makefile is my title" > README.md
	echo `date +'%y.%m.%d %H:%M:%S'` >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
