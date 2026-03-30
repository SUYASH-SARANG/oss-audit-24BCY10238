#!/bin/bash

# This script checks a few directories and shows some basic info about them

echo "========================================"
echo "        Directory Audit Report"
echo "========================================"

# list of directories to check (using Git Bash paths)
DIRS=("/c/Users" "/c/Windows" "/c/Program Files" "/tmp")

# looping through each directory one by one
for DIR in "${DIRS[@]}"; do
    # checking if the directory actually exists
    if [ -d "$DIR" ]; then
        echo "Directory: $DIR"

        # showing permissions and some basic details
        ls -ld "$DIR"

        # counting how many items are inside the directory
        COUNT=$(ls "$DIR" 2>/dev/null | wc -l)
        echo "Items inside: $COUNT"

        echo "----------------------------------------"
    else
        # if the directory is not found
        echo "$DIR does not exist"
    fi
done

echo "========================================"
