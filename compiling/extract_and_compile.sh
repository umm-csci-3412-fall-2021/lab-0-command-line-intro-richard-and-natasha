#!/bin/sh

#Unzips NthPrime.tgz and creates a new directory NthPrime
tar -xzf NthPrime.tgz
cd NthPrime || exit

#Creates the executable NthPrime that is
#linked to the other files
gcc -o NthPrime main.c nth_prime.c nth_prime.h
./NthPrime "$1"
