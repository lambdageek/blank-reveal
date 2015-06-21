
.PHONY: all run clean

all: index.html

run:
	python -m SimpleHTTPServer 8080

index.html: presentation.md Makefile
	pandoc -s -t revealjs -V theme=league -V transition=fade $< -o $@ 

clean:
	-rm -f index.html *~
