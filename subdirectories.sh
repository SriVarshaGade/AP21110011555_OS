#!/bin/bash

# Get the current directory
rootdir=$(pwd)

# Find all subdirectories
subdirs=$(find $rootdir -type d)

# Loop through the subdirectories and count the number of files
for subdir in $subdirs
do
    # Get the number of files in the subdirectory
    numfiles=$(find $subdir -type f | wc -l)

    # Print the directory name and the number of files
    echo "$subdir: $numfiles"
done
