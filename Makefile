CC = gcc
CFLAGS = -O3

PROGRAMS = avll1c avll2c avlld

all: $(PROGRAMS)

avll1c: avll1.c
	$(CC) $(CFLAGS) -o $@ $^
avll2c: avll2.c
	$(CC) $(CFLAGS) -o $@ $^
avlld: avll.d
	dmd $^ -of$@ -O
	rm avlld.o

.PHONY: clean
clean:
	rm -f $(PROGRAMS)
