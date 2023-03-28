#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 file directory"
    exit 1
fi

filename="$1"
directory="$2"
symbolic_link_count=0

if [ ! -f "$filename" ]; then
    echo "Error: file $filename not found"
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "Error: directory $directory not found"
    exit 1
fi

for entry in "$directory"/*
do
    if [[ -L "$filename" ]]; then
    ((symbolic_link_count++))
    echo "file is s symbolic link" 
    fi
    echo "$entry"
done

echo "Symbolic link count: $symbolic_link_count"