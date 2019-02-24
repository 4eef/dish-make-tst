CC=gcc

.PHONY: clean build

clean:
    rm -rf hello *.o

%.o: %.c
    $(CC) -c -o $@ $<
    
#hello.o: hello.c
#    $(CC) -c -o hello.o hello.c

#main.o: main.c
#    $(CC) -c -o main.o main.c

build: hello.o main.o
    $(CC) -o hello hello.o main.c

#UNBUILT
