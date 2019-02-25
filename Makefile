CC ?= gcc

.PHONY: clean build

clean:
	@echo "Project outputs cleaned"
	@rm -rf app *.o

%.o: %.c
	@echo "Build $^ for $@ output"
	@$(CC) -c -o $@ $^

build: hello.o main.o
	@$(CC) -o app hello.o main.c

