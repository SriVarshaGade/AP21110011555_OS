#!/bin/bash

# Get the filename from the user
echo -n "Enter the filename: "
read filename

# Count the number of vowels in the file
numvowels=$(tr -cd 'aeiouAEIOU' < $filename | wc -c)

# Print the number of vowels
echo "The number of vowels in $filename is: $numvowels"
