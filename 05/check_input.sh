#!/bin/bash

check_input() {
if  [[ ! -d "$1" || "$1" != */ ]]; then
  return 0 
fi
  return 1
}
