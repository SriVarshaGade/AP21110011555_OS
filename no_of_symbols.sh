#!/bin/bash

# Get the filename from the user
echo -n "Enter the filename: "
read filename

# Count the number of symbols in the file
numsymbols=$(tr -cd '[:punct:]' < $filename | wc -c)

# Print the number of symbols
echo "The number of symbols in $filename is: $numsymbols"
