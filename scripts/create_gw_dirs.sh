#!/bin/bash

# check if a directory path is passed 
if [ -z "$1" ]; then
	echo "Usage: $0 /path/to/target-directory"
	exit 1
fi	

TARGET_DIR="$1"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Create folders gw_1 to gw_38 inside the target directory
for i in $(seq 1 38); do
	mkdir -p "$TARGET_DIR/gw_$i"
done

echo "Folders gw_1 to gw_38 created in $TARGET_DIR"
