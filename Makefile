all:
	latexmk -pdf main

clean:
	latexmk -C main
	rm main.bbl
