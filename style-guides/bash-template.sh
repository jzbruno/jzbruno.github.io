#!/usr/bin/env bash

set -euo pipefail

# Functions

err() {
    >&2 echo "$@"
}

usage() {
    echo "Usage: ./$(basename ${0}) arg"
}

# Init

if ! type jq &>/dev/null; then
	err "Missing required binary 'jq'."
    err "$(usage)"
	exit 1
fi

var="${ENV_VAR-}"
if [[ -z ${var} ]]; then
    err "Environment variable 'ENV_VAR' not set."
    err "$(usage)"
    exit 1
fi

arg="${1-}"
if [[ -z ${arg} ]]; then
    err "Missing argument 'arg'."
    err "$(usage)"
    exit 1
fi

# Main

echo "${arg}"
