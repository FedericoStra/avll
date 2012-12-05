#!/usr/bin/env python

import sys

def avll(f):
    lines = f.readlines()
    return sum(len(l) for l in lines) / float(len(lines)) - 1

if __name__ == "__main__":
    print "Average line length:", avll(sys.stdin)
