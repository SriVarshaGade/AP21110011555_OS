#!/bin/bash

# Check if a filename is provided
if [ $# -eq 0 ]
then
    echo "Please provide a filename as an argument."
    exit
fi

# Check if the file exists
if [ ! -f $1 ]
then
    echo "File not found."
    exit
fi

# Convert the text to lowercase and remove non-alphabetic characters
cat $1 | tr '[:upper:]' '[:lower:]' | tr -cd '[:alpha:] \n' > temp.txt

# Remove duplicates and sort the words alphabetically
sort -u temp.txt > wordlist.txt

# Count the number of words in the wordlist
wordcount=$(wc -w wordlist.txt | awk '{print $1}')

# Print the wordlist and word count
echo "Wordlist saved to wordlist.txt"
echo "Number of words: $wordcount"

# Remove the temporary file
rm temp.txt
