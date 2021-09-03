#!/bin/sh

fileName=$1

#Create a temporary directory that stores the library files
SCRATCH=$(mktemp -dp /tmp)
tar -xzf "$fileName" -C "$SCRATCH"
#Stores the current directory
here=$(pwd)
cd "$SCRATCH" || exit
name=$(ls)

cd "$name" || exit
#search the current directory for files containing
#"DELETE ME"and remove each file found
grep -lF "DELETE ME" file_* | xargs rm

cd .. || exit
#Creates the cleaned archive using $here to 
#go to the proper path
tar -czf "$here"/cleaned_"$name".tgz "$name"

