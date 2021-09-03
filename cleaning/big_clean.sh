#!/bin/sh

SCRATCH=$(mktemp -dp /tmp)
tar -xzf little_dir.tgz -C "$SCRATCH"
tree "$SCRATCH"
here=$(pwd)
cd "$SCRATCH"
name=$(ls)
DIR=$(dirname "$SCRATCH")
BASENAME=$(basename "$SCRATCH")
echo $DIR $BASENAME

tar -cvzf "$here"/cleaned_"$name".tgz "$name"

