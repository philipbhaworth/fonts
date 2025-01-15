#!/bin/bash

# Install all .ttf and .otf fonts to user's font directory
SOURCE_DIR="$1" # Directory to scan for fonts

if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: $0 <source_directory>"
  exit 1
fi

echo "Installing fonts from $SOURCE_DIR to ~/Library/Fonts/..."
find "$SOURCE_DIR" -type f \( -name "*.ttf" -o -name "*.otf" \) -exec cp {} ~/Library/Fonts/ \;

echo "Font installation complete!"

