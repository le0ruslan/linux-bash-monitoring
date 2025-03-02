#!/bin/bash

check_input() {
  local input="$1"
  if [[ "$input" =~ [0-9] ]]; then
    return 1 
  else
    return 0 
  fi
}
