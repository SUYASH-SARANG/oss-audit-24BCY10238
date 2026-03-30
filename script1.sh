#!/bin/bash

# This script just shows some basic system info for the audit

echo "========================================"
echo "   Open Source Audit — System Info"
echo "========================================"

# who is currently using the system
echo "User     : $(whoami)"

# which operating system is running
echo "OS       : $(uname -o)"

# kernel version (basically the core part of the OS)
echo "Kernel   : $(uname -r)"

# uptime doesn’t really work in Git Bash so just mentioning it
echo "Uptime   : Not available in Git Bash"

# current date and time of the system
echo "Date     : $(date)"

echo "========================================"


