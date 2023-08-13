#!/usr/bin/env bash

# Directory containing the .glb files
DIR="./src/models"

# Check if the argument is provided
if [[ -z "$1" ]]; then
    echo "Usage: $0 <base-name-of-glb-file>"
    exit 1
fi

# Create the full path of the .glb file using the provided base name
glb_file="$DIR/$1.glb"

# Check if the file exists
if [[ ! -f "$glb_file" ]]; then
    echo "Error: File '$glb_file' does not exist."
    exit 2
fi

# Output file name with .jpg extension
output_file="$DIR/$1.jpg"

# Execute the command
screenshot-glb -i "$glb_file" -o "$output_file" -w 280 -h 280 -m "environment-image=neutral&exposure=5&camera-orbit=180deg%2090deg&field-of-view=30deg"

