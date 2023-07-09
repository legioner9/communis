#!/usr/bin/env bash

# PNG files in dir.
for file in ~/Pictures/*.png; do
    [ -f "$file" ] || continue
    printf '%s\n' "$file"
done