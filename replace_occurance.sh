#!/bin/bash

# Get the filename from the user
echo -n "Enter the filename: "
read filename

# Get the character to replace
echo -n "Enter the character to replace: "
read char

# Get the string to replace with
echo -n "Enter the string to replace with: "
read replacestr

# Replace the character and count the number of replacements
numreplacements=$(sed -i "s/$char/$replacestr/g" $filename | wc -l)

# Print the number of replacements
echo "The number of replacements is: $numreplacements"
