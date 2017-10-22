#!/bin/bash

# Alfredo H. Locht

# halocht@gmail.com ahlocht@dons.usfca.edu

echo "This is a preliminary QC Check output on selected fasta files"

date $F

# First unzip all the files in halocht-week05-homework-remote-machines/data

echo "Unzipping files in ./data directory"

unzip ./data/*.zip

rm .data/*.zip

echo  "Unzipped and the bulk was discarded"

echo "Looking at files"


for $file in "$@"
do
	echo "Output for $file"

	echo "Size:"

	du -h $file

	echo ___________________

	echo "First three lines:"

	head -3 $file

	echo __________________

	echo "Last three lines:"

	tail -3 $file

	echo _________________

	echo "Number of sequences:"

	grep -c "^>" $file

	echo "Sequence Names:"

	sort $file

	echo ##############################

done

