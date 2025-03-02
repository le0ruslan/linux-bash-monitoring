#!/bin/bash

check_input() {
  for input in "$@"; do
  if ! [[ "$input" =~ ^[1-6]$ ]]; then
    return 1 
  fi
  done
  return 0
}
