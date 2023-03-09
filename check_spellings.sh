#!/bin/bash

# Check if aspell is installed
if ! command -v aspell &> /dev/null
then
    echo "aspell is not installed. Please install it first."
    exit
fi

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

# Check spelling
echo "Checking spelling of $1..."
aspell check $1
