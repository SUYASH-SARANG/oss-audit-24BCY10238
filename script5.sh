#!/bin/bash

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""

# Take user input
read -p "Enter an open-source tool you use: " TOOL
read -p "What does freedom mean to you (one word)? " FREEDOM
read -p "What would you build and share? " BUILD

# Output file
FILE="manifesto.txt"

# Write content
echo "----------------------------------------" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "----------------------------------------" >> $FILE
echo "" >> $FILE

echo "I use $TOOL regularly and it shows the power of open collaboration." >> $FILE
echo "To me, freedom means $FREEDOM in technology." >> $FILE
echo "I would build $BUILD and share it with everyone." >> $FILE
echo "Open source promotes innovation and transparency." >> $FILE

echo "" >> $FILE
echo "----------------------------------------" >> $FILE

# Display result
echo ""
echo "Manifesto saved in $FILE"
echo ""
cat $FILE

echo "========================================"