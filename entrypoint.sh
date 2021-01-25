#!/bin/sh -l

main_file="${1}"
working_directory="${2}"

if [[ -n "$working_directory" ]]; then
  if [[ ! -d "$working_directory" ]]; then
    mkdir -p "$working_directory"
  fi
  cd "$working_directory"
fi

context $main_file