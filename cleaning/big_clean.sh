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
cd "$here"
tar -cvf cleaned_"$name".tgz "$DIR"/"$BASENAME"/"$name"

