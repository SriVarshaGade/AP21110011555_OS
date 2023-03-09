#!/bin/bash

# Get the filename from the user
echo -n "Enter the filename: "
read filename

# Count the number of articles in the file
numarticles=$(grep -o -i '\b\(a\|an\|the\)\b' $filename | wc -l)

# Print the number of articles
echo "The number of articles in $filename is: $numarticles"
