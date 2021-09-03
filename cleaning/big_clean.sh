#!/bin/sh

fileName=$1

#Create a temporary directory
SCRATCH=$(mktemp -dp /tmp)
tar -xzf "$fileName" -C "$SCRATCH"
here=$(pwd)
cd "$SCRATCH" || exit
name=$(ls)

cd "$name" || exit
grep -lF "DELETE ME" file_* | xargs rm

cd .. || exit
tar -czf "$here"/cleaned_"$name".tgz "$name"

