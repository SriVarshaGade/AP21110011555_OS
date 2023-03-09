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

# Create a temporary file
tempfile=$(mktemp)

# Delete the even-numbered lines
sed 'n;d' $1 > $tempfile

# Overwrite the original file with the modified file
mv $tempfile $1

# Print a message
echo "Even-numbered lines deleted from $1."
