#!/bin/bash

# Creates symlinks on all `__Snapshots__` tests folders found within ``CanvasKit/Tests`` for
# Xcode Cloud to find snapshots references when running UI Tests.

TEST_ROOT_DIR="CanvasKit/Tests"

# Base directory where symlinks will be stored.
SYMLINKS_DIR="ci_scripts/__Snapshots__"

# Ensure the symlink base directory exists.
mkdir -p "$SYMLINKS_DIR"

# Iterate over all subdirectories in the test root directory to find `__Snapshots__` files.
find "$TEST_ROOT_DIR" -type d -name "__Snapshots__" | while read -r snapshot_dir; do
  # Determine the parent directory of the `__Snapshots__` folder.
  test_dir=$(dirname "$snapshot_dir")
  test_name=$(basename "$test_dir")

  # Create a symbolic link in the `ci_scripts/__Snapshots__` folder pointing to the `__Snapshots__` folder.
  link_name="$SYMLINKS_DIR/$test_name"
  ln -sf "../../../$snapshot_dir" "$link_name"

  echo "Created symbolic link: $link_name -> $snapshot_dir"
done
