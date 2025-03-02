#!/bin/bash

different_colors() {
  local a b c d
  a="$1"
  b="$2"
  c="$3"
  d="$4"

  if [[ "$a" == "$b" || "$c" == "$d" ]]; then
    return 1
  fi
  return 0 
}
