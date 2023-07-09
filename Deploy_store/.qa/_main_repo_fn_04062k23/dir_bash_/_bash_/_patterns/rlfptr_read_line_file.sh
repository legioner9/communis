##!/usr/bin/env bash

# Setting 'IFS' tells 'read' where to split the string.
while IFS='=' read -r key val; do
    # Skip over lines containing comments.
    # (Lines starting with '#').
    [ "${key##\#*}" ] || continue

    # '$key' stores the key.
    # '$val' stores the value.
    printf '%s: %s\n' "$key" "$val"

    # Alternatively replacing 'printf' with the following
    # populates variables called '$key' with the value of '$val'.
    #
    # NOTE: I would extend this with a check to ensure 'key' is
    #       a valid variable name.
    # export "$key=$val"
    #
    # Example with error handling:
    # export "$key=$val" 2>/dev/null ||
    #     printf 'warning %s is not a valid variable name\n' "$key"
done < "file"