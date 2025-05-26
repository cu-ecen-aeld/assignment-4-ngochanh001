#!/bin/bash
# Script to clean the buildroot environment
# Author: <Your Name>

# Load shared config
source shared.sh

# Move to script directory
cd "$(dirname "$0")"

# Check if buildroot directory exists
if [ ! -d buildroot ]; then
    echo "Error: buildroot directory not found!"
    exit 1
fi

# Run distclean to remove buildroot build artifacts and configuration
echo "Running make distclean in buildroot..."
make -C buildroot distclean
