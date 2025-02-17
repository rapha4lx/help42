#!/bin/sh

folders=$(ls -d */);

for folder in $folders; do
    echo $folder;
    files=$(find $folder -type f -name "*.c");
    for file in $files; do
        if head -n 1 "$file" | grep -q '^/\*'; then
			sed -i '1,11d' "$file";
			echo "	$file Header Cleaned";
		else
			echo "	$file Dont Have Header";
		fi
    done
done