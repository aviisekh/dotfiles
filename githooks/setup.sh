#!/bin/bash

# Find the location of the script.
HOOKS_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp "$HOOKS_DIRECTORY/pre-commit" "$1/.git/hooks/pre-commit"

echo "...done"
