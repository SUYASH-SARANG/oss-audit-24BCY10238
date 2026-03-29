#!/bin/bash

echo "========================================"
echo "      FOSS Package Inspector"
echo "========================================"

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "----------------------------------"

# Check if git exists
if command -v git >/dev/null 2>&1; then
    echo "$PACKAGE is installed."

    # Show version
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------"

# Case statement
case $PACKAGE in
    git)
        echo "Git: a distributed version control system for tracking code changes."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

echo "========================================"