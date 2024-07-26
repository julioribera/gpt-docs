# Overview

This script combines files with a specified extension (e.g., `.md`, `.txt`, `.js`) from a given directory into a single text file. The files are sorted by name, and each file's path and content are included in the combined output. This functionality is useful for creating a single document from multiple files, such as compiling updated documentation for custom GPTs.

# Requirements

- Bash environment (Unix/Linux/MacOS)
- Access to the target directory containing the files to be combined

# Usage

### Script Execution:

Run the script using the following command format:

```bash
./scripts/combine-md.sh <source_directory> <output_file> <file_extension>
```

- Replace combine-md.sh with your script's filename.
- `<source_directory>` should be the path to the directory containing the files.
- `<output_file>` is the name of the file where the combined content will be stored.
- `<file_extension>` is the extension of the files you want to combine (e.g., md, txt, js).

Example:

```bash
./script_name.sh ./path/to/github/repo/docs combined_documentation.txt md
```
