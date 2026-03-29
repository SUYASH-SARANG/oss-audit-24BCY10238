#!/bin/bash

echo "========================================"
echo "        Log File Analyzer"
echo "========================================"

FILE=$1
KEYWORD=$2

# Default keyword
if [ -z "$KEYWORD" ]; then
    KEYWORD="echo"
fi

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File not found."
    exit 1
fi

COUNT=0

# Read file line by line
while IFS= read -r LINE; do
    echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT + 1))
    fi
done < "$FILE"

echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $FILE"
echo "----------------------------------------"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$FILE" | tail -n 5

echo "========================================"