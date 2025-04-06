#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 yourDomainName"
  exit 1
fi

NEW_NAME=$1

sed -i '.bak' "s/cfparkingpage/$NEW_NAME/g" package.json
sed -i '.bak' "s/cfparkingpage/$NEW_NAME/g" package-lock.json
sed -i '.bak' "s/cfparkingpage/$NEW_NAME/g" wrangler.jsonc

echo "Replaced cfparkingpage with $NEW_NAME in config files"

if [ "cfparkingpage" != "$NEW_NAME" ]; then
  cd ..
  mv "cfparkingpage" "$NEW_NAME"
  echo "Renamed directory cfparkingpage to $NEW_NAME"
  cd "$NEW_NAME"
fi

echo "Rename complete."
