#!/bin/bash

source ./number_of_parameters.sh
source ./check_input.sh
source ./output_result.sh

if number_of_parameters "$@"; then
  echo "Input is invalid, enter only one parameter"
  exit 1
fi

if check_input "$1"; then
  output_result "$1"
else
  echo "Input is invalid, dont enter numbers"
fi
