
.PHONY: all run clean

all: index.html

run:
	python -m SimpleHTTPServer 8080

index.html: presentation.md
	pandoc -t revealjs -s $< -o $@ 

clean:
	-rm -f index.html *~
