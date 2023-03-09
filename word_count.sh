#!/bin/bash

# Check if three filenames are provided
if [ $# -ne 3 ]
then
    echo "Please provide three filenames as arguments."
    exit
fi

# Check if the files exist
if [ ! -f $1 ] || [ ! -f $2 ] || [ ! -f $3 ]
then
    echo "One or more files not found."
    exit
fi

# Combine the files into a single file
cat $1 $2 $3 > combined.txt

# Count the number of words in the combined file
wordcount=$(wc -w combined.txt | awk '{print $1}')

# Print the word count
echo "Word count: $wordcount"

# Remove the combined file
rm combined.txt
