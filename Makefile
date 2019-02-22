.PHONY: clean build

clean:
rm -rf hello *.o

build: helloWorld.c
gcc -o hello helloWorld.c

#UNFINISHED
