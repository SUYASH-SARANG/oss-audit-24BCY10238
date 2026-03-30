#!/bin/bash

# This script checks a log file and counts how many times a keyword appears

echo "========================================"
echo "        Log File Analyzer"
echo "========================================"

# taking file name and keyword from user input
FILE=$1
KEYWORD=$2

# if no keyword is given, just use "echo" by default
if [ -z "$KEYWORD" ]; then
    KEYWORD="echo"
fi

# checking if the file actually exists
if [ ! -f "$FILE" ]; then
    echo "Error: File not found."
    exit 1
fi

COUNT=0

# reading the file line by line
while IFS= read -r LINE; do
    # checking if the line contains the keyword (case insensitive)
    echo "$LINE" | grep -i "$KEYWORD" > /dev/null

    # if match is found, increase count
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT + 1))
    fi
done < "$FILE"

echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $FILE"
echo "----------------------------------------"

# showing last 5 lines where the keyword appeared
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$FILE" | tail -n 5

echo "========================================"
