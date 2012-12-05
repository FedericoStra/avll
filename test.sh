#!/bin/bash

DATA=some-data.txt

echo "C - v1"
time ./avll1c < $DATA

echo
echo
echo "C - v2"
time ./avll2c < $DATA

echo
echo
echo "C - v3"
time ./avll3c < $DATA

echo
echo
echo "D - interpreted"
time ./avll.d < $DATA

echo
echo
echo "D - compiled"
time ./avlld < $DATA

# Haskell is WAY TOO SLOW and MEMORY INTENSIVE
#echo
#echo
#echo "Haskell"
#time ./avllhs < $DATA

echo
echo
echo "Python - v1"
time ./avll1.py < $DATA

echo
echo
echo "Python - v2"
time ./avll2.py < $DATA
