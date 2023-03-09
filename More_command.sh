#!/bin/bash

# Get the filename from the user
echo -n "Enter the filename: "
read filename

# Get the number of lines in the file
numlines=$(wc -l $filename | awk '{print $1}')

# Initialize the line counter
linecount=0

# Loop through the file, 15 lines at a time
while [ $linecount -lt $numlines ]
do
    # Display the next 15 lines
    head -n $((linecount+15)) $filename | tail -n 15

    # Increment the line counter
    linecount=$((linecount+15))

    # Wait for user input before continuing
    read -p "Press enter to continue or q to quit" -n 1 -r key
    if [[ $key == "q" ]]
    then
        break
    fi
done
