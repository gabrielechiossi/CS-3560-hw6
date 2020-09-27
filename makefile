all: archive build

build: game

game: main.o game.o othello.o
	g++ -o game.exe main.o game.o othello.o
	./game.exe

main.o: main.cc game.h othello.h
	g++ -c main.cc
game.o: game.cc game.h
	g++ -c game.cc
othello.o: othello.cc othello.h
	g++ -c othello.cc

clean: 
	rm -f *.o *.out *.tar.gz game.exe

archive: main.cc game.cc othello.cc game.h colors.h othello.h piece.h makefile
	tar -czvf archive.tar.gz main.cc game.cc othello.cc game.h colors.h othello.h piece.h makefile