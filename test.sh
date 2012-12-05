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
echo "D - interpreted"
time ./avll.d < $DATA

echo
echo
echo "D - compiled"
time ./avlld < $DATA

echo
echo
echo "Python - v1"
time ./avll1.py < $DATA

echo
echo
echo "Python - v2"
time ./avll2.py < $DATA
