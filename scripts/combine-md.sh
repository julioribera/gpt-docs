#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <source_directory> <output_file> <file_extension>"
    exit 1
fi

# Assign command-line arguments to variables
source_directory=$1
output_file=$2
file_extension=$3

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

# Create or clear the output file
> "$output_file"

# Function to handle interruption (e.g., CTRL+C)
cleanup() {
    echo "Script interrupted. Partial data may be in $output_file."
    exit 1
}
trap cleanup INT

# Iterate over sorted files with the given extension
find "$source_directory" -name "*.$file_extension" | sort | while read -r file; do
    echo "----------NEXT-FILE----------" >> "$output_file"
    echo "File source: $file" >> "$output_file"
    cat "$file" >> "$output_file"
    if [ $? -ne 0 ]; then
        echo "Error reading file: $file"
        continue
    fi
    echo -e "\n\n" >> "$output_file"
done

echo "Documentation combined into $output_file"
