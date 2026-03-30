#!/bin/bash

# This script creates a simple open-source manifesto based on user input

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""

# asking the user a few questions
read -p "Enter an open-source tool you use: " TOOL
read -p "What does freedom mean to you (one word)? " FREEDOM
read -p "What would you build and share? " BUILD

# setting the output file name
FILE="manifesto.txt"

# writing the content into the file
echo "----------------------------------------" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "----------------------------------------" >> $FILE
echo "" >> $FILE

# adding user responses into proper sentences
echo "I use $TOOL regularly and it shows the power of open collaboration." >> $FILE
echo "To me, freedom means $FREEDOM in technology." >> $FILE
echo "I would build $BUILD and share it with everyone." >> $FILE
echo "Open source promotes innovation and transparency." >> $FILE

echo "" >> $FILE
echo "----------------------------------------" >> $FILE

# showing where the file is saved
echo ""
echo "Manifesto saved in $FILE"
echo ""

# displaying the content of the file
cat $FILE

echo "========================================"
