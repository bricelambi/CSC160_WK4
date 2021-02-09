CC=g++
CFLAGS=-I.
DEPS = csc160.h
OBJ = csc160.o hw4.o wk4.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

wk4: $(OBJ)
	$(CC) -o $@ csc160.o wk4.o $(CFLAGS)

hw4: $(OBJ)
	$(CC) -o $@ csc160.o hw4.o $(CFLAGS)

all: wk4 hw4

clean:
	rm -f *.o wk4 hw4
