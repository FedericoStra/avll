#!/usr/bin/env python

from random import gammavariate

def datagen(nl=100, ll=40):
	for line in xrange(int(gammavariate(5.*nl, 1./5.))):
		yield "-" * int(gammavariate(ll, 1.)) + "\n"

def sdatagen(nl=100, ll=40):
	return "".join(datagen(nl, ll))

def ldatagen(nl=100, ll=40):
	return list(datagen(nl, ll))

if __name__ == "__main__":
    f = open("some-data.txt", "w")
    f.write(sdatagen(1000000))
    f.close()
