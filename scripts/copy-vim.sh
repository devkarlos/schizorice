#!/bin/zsh

# Get the directory of the script to reliably construct paths
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

# Set source and destination directories
SRC_DIR="$REPO_ROOT/home/.config/vim"
DEST_DIR="$HOME/.config/vim"

# Check if the source directory exists
if [ ! -d "$SRC_DIR" ]; then
    echo "Error: Source directory $SRC_DIR does not exist."
    exit 1
fi

# Ensure the destination directory exists
mkdir -p "$DEST_DIR"

# Ensure state directories exist so vim doesn't complain or clutter ~/.vim
mkdir -p "$DEST_DIR/swap"
mkdir -p "$DEST_DIR/backup"
mkdir -p "$DEST_DIR/undo"

# Copy all files and folders, replacing existing ones
echo "Copying vim configuration files from $SRC_DIR to $DEST_DIR..."
cp -R "$SRC_DIR/"* "$DEST_DIR/"

echo "Successfully copied!"
