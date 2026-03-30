#!/bin/bash

# This script checks if a package (git here) is installed and gives some basic info

echo "========================================"
echo "      FOSS Package Inspector"
echo "========================================"

# setting the package name (you can change this if needed)
PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "----------------------------------"

# checking if git is installed or not
if command -v git >/dev/null 2>&1; then
    echo "$PACKAGE is installed."

    # showing the version of git installed
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------"

# using case to print a short description of the package
case $PACKAGE in
    git)
        echo "Git: a distributed version control system for tracking code changes."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

echo "========================================"
