#!/bin/bash

echo "========================================"
echo "        Directory Audit Report"
echo "========================================"

# List of directories (Windows paths via Git Bash)
DIRS=("/c/Users" "/c/Windows" "/c/Program Files" "/tmp")

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        echo "Directory: $DIR"

        # Show permissions (basic)
        ls -ld "$DIR"

        # Show number of files inside
        COUNT=$(ls "$DIR" 2>/dev/null | wc -l)
        echo "Items inside: $COUNT"

        echo "----------------------------------------"
    else
        echo "$DIR does not exist"
    fi
done

echo "========================================"