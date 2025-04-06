#!/bin/bash

# Check if a new project name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 yourDomainName"
  exit 1
fi

NEW_NAME=$1

# Replace "cfparkingpage" with the new project name in the specified files
sed -i '.bak' "s/cfparkingpage/$NEW_NAME/g" package.json
sed -i '.bak' "s/cfparkingpage/$NEW_NAME/g" package-lock.json
sed -i '.bak' "s/cfparkingpage/$NEW_NAME/g" wrangler.jsonc

echo "Replaced cfparkingpage with $NEW_NAME in config files"

# Get the current directory name
CURRENT_DIR=$(basename "$PWD")

# Rename the parent directory to the new project name
if [ "$CURRENT_DIR" != "$NEW_NAME" ]; then
  cd ..
  mv "$CURRENT_DIR" "$NEW_NAME"
  echo "Renamed directory $CURRENT_DIR to $NEW_NAME"
  cd "$NEW_NAME"
fi

echo "Rename complete."
