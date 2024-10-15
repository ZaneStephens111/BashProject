#!/bin/bash

# Help function to display usage information
function display_help() {
    echo "Text File Concatenator Script"
    echo ""
    echo "Usage: $0 [-h] [-o OUTPUT_FILE] FILE1 FILE2 ..."
    echo ""
    echo "Concatenate multiple text files into a single output file."
    echo ""
    echo "Options:"
    echo "  -h                Display this help message and exit"
    echo "  -o OUTPUT_FILE    Specify the name of the output file (default: concatenated_output.txt)"
    echo ""
    exit 0
}

# Handle invalid arguments
if [[ "$#" -lt 1 ]]; then
    echo "Error: At least one file must be specified"
    display_help
fi

# Default values
output_file="concatenated_output.txt"

# Process options and arguments
while getopts ":ho:" opt; do
    case $opt in
        h)
            display_help
            ;;
        o)
            output_file="$OPTARG"
            ;;
        \?)
            echo "Error: Invalid option -$OPTARG" >&2
            display_help
            ;;
    esac
done

# Shift past the options to get the file arguments
shift $((OPTIND -1))

# Check if files exist and concatenate them
for file in "$@"; do
    if [[ ! -f "$file" ]]; then
        echo "Error: File '$file' not found."
        exit 1
    fi
done

# Concatenate files into the output file
echo "Concatenating files..."
cat "$@" > "$output_file"
echo "Output written to '$output_file'"

# Example of using a regular expression (checks for a specific pattern in the final file)
pattern="^ERROR.*"
if grep -qE "$pattern" "$output_file"; then
    echo "The output file contains lines that start with 'ERROR'."
else
    echo "No lines starting with 'ERROR' found in the output file."
fi

exit 0