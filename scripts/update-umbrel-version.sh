#!/bin/sh

name="web"

find . -type f -name 'umbrel-app.yml' | while read -r file; do
  echo "--- Found: $file"
  directory=$(dirname "$file")
  version=$(yq ".services.$name.image" "$directory/docker-compose.yml" | grep -v null | sed -E 's/.*:([^@]+)@.*/\1/')
  if [ -n "$version" ]; then
    yq --in-place --yaml-output --yaml-roundtrip ".version = \"$version\"" "$file"
  fi
  echo ""
done
