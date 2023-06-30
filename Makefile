PAPER=main.tex
SHELL=/bin/zsh

all:
	mkdir build && cp ./metapost_pic/* LinLibertine_Rah.ttf ./build/ && cd build && lualatex -shell-escape ../main.tex main.pdf
