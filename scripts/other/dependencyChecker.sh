#!/bin/bash
# COLORS
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
YLLW='\033[1;33m'
DG='\033[0;37m'
LR='\033[0;31m'
# END COLORS
./autohackHeader
# Path to the file containing the list of dependencies
# Find where ah is installed first
DEPENDENCIES_FILE="requirements.txt"

# Check if the dependencies file exists
if [ ! -f "$DEPENDENCIES_FILE" ]; then
    echo "Dependencies file not found: $DEPENDENCIES_FILE"
    exit 1
fi

# Loop through each line in the dependencies file
while IFS= read -r package || [ -n "$package" ]; do
    # Check if the package is installed
    if dpkg -l | grep -qw "$package"; then
        printf "\n${GREEN}[✔] $package is installed. [✔]${NC}\n"
    else
        printf "\n${RED}[✘] $package is NOT installed. [✘]${NC}\n"
    fi
done < "$DEPENDENCIES_FILE"
