all: build archive

build: game

game: main.cc game.cc othello.cc 
	g++ -o game main.cc game.cc othello.cc 

main.o: main.cc game.h othello.h
	g++ -g -c main.cc
game.o: game.cc game.h
	g++ -g -c game.cc
othello.o: othello.cc othello.h
	g++ -g -c othello.cc

clean: 
	rm -f *.o core *.core *.out *.tar

archive: main.cc game.cc othello.cc game.h colors.h othello.h piece.h
	tar -cf archive.tar main.cc game.cc othello.cc game.h colors.h othello.h piece.h


