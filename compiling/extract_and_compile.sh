#!/bin/sh

tar -xzf NthPrime.tgz
cd NthPrime || exit
gcc -o NthPrime main.c nth_prime.c nth_prime.h
./NthPrime "$1"
