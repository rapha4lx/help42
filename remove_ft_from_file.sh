#!/bin/sh

files=$(find ./ -type f -name "ft_*.c");

for file in $files; do
    dir=$(dirname "$file")
    echo $dir;
    filename=$(basename "$file");
    echo $filename;
    
    newfile="${filename:3}";
    mv "$file" "$dir/$newfile"

    echo "new file -> $dir/$newfile";
done
