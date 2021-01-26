#!/bin/sh -l

set -e

info() {
  echo -e "\033[1;34m$1\033[0m"
}

main_file="${1}"
working_directory="${2}"
args="${3}"

if [[ -n "$working_directory" ]]; then
  if [[ ! -d "$working_directory" ]]; then
    mkdir -p "$working_directory"
  fi
  cd "$working_directory"
  info "Using working directory: $working_directory"
fi

if [[ -z "$args" ]]; then
  info "No argument has been specified."
else
  info "Args: $args"
fi

context "$args" "$main_file"