#!/usr/bin/env bash

set -euo pipefail

# Functions

err() {
    >&2 echo "$@"
}

usage() {
    echo "Usage: ./$(basename ${0}) name"
}

# Init

name="${1-}"
if [[ -z ${name} ]]; then
    err "Missing argument 'name'."
    err usage
    exit 1
fi

# Main

echo "${name}"
