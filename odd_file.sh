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

# Read the file and separate even and odd lines
even_lines=$(sed -n '2~2p' $1)
odd_lines=$(sed -n '1~2p' $1)

# Write the even lines to evenfile
echo "$even_lines" > evenfile

# Write the odd lines to oddfile
echo "$odd_lines" > oddfile

# Print a message
echo "Even lines written to evenfile. Odd lines written to oddfile."
