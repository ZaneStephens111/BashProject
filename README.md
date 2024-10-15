# BashProject
IT3038 GitHub Bash Project
# Text File Concatenator

## Overview

BashProject.sh is a Bash script that takes multiple text files as input and combines them into a single output file. This script allows users to merge any number of text files into one single text file with a single line of code. 

## Features

- **Concatenate multiple files**: Combine any number of text files into a single output file.
- **Customizable output**: Specify the name of the output file, or use the default (`concatenated_output.txt`).
- **Error handling**: The script checks for invalid file paths and displays informative error messages.
- **Regular expression support**: The script checks the output file for lines that match a specific pattern (e.g., lines that start with `ERROR`).
- **Help option**: A `-h` option provides guidance on how to use the script.

## Why It's Useful

This script is helpful in scenarios where you need to manage or analyze multiple text files. For example:
- Consolidate log files for easier review.
- Combine multiple data files into one for backup purposes.
- Quickly merge text files without having to open them manually. Saving the time of copying and pasting potentially large text files into one larger file.

## Usage

bash BashProject.sh [-h] 
- This command shows the user how to run the script. Giving them the full command line for how to actually merge text files. 
bash BashProject.sh -o [Merged_File_Name] FILE1 FILE2 ...
- This command is the command that actually merges the files. To use it, simply type it in, select the name for your merged file (the name will not have brackets surrounding it.. Specifying file type is NOT necessary, however, you can specify .txt.) Then you just type in the full file name extension included for the files you want to merge.
