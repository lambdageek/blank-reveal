
.PHONY: all run

all: index.html

run:
	python -m SimpleHTTPServer 8080

index.html: presentation.md
	pandoc -t revealjs -s $< -o $@ 
