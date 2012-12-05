CC = gcc
CFLAGS = -O3

PROGRAMS = avll1c avll2c avll3c avlld avllhs

all: $(PROGRAMS)

avll1c: avll1.c
	$(CC) $(CFLAGS) -o $@ $^
avll2c: avll2.c
	$(CC) $(CFLAGS) -o $@ $^
avll3c: avll3.c
	$(CC) $(CFLAGS) -o $@ $^
avlld: avll.d
	dmd $^ -of$@ -O
	rm avlld.o
avllhs: avll.hs
	ghc $(CFLAGS) -o $@ $^
	rm avll.hi avll.o

.PHONY: clean
clean:
	rm -f $(PROGRAMS)
