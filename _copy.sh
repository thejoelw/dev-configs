#!/bin/sh

SRC=$1
DST=$2

if [ -z "$SRC" ] || [ -z "$DST" ]; then
    echo "Usage: $0 <SRC> <DST>"
    exit 1
fi

echo "Copying $SRC to $DST..."

if [ ! -e "$DST" ]; then
    echo "(destination does not exist — will be created)"
    git diff --no-index /dev/null "$SRC"
else
    git diff --no-index "$DST" "$SRC" && exit 0
fi

read -p "Are you sure you want to continue? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

mkdir -p "$(dirname "$DST")"
cp "$SRC" "$DST"
