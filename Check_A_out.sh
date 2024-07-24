#!/bin/sh

folders=$(ls -d */)

for folder in $folders
do 
	outFiles=$(find $folder -type f -name "*.out")
	for outF in $outFiles
	do
		echo "Out: $outF"
		rm $outF
		echo "Removed: $outF"
	done
done
