#!/usr/bin/env python

import sys

def avll(f):
    n = 0
    s = 0
    for line in f:
        s += len(line)
        n += 1
    return float(s) / n - 1

if __name__ == "__main__":
    print "Average line length:", avll(sys.stdin)
