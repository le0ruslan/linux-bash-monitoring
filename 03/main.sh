#!/bin/bash

source ./number_of_parameters.sh
source ./check_input.sh
source ./different_colors.sh
source ./collect_data.sh
source ./display_data.sh

if number_of_parameters "$@"; then
  echo "Input is invalid, use only four integer parameters in range 1-6"
  exit 1
fi

if check_input "$@"; then
  if ! different_colors "$@"; then
    echo "Input is invalid, use different colors for background and text. Please try again"
    exit 0
  fi
else
    echo "Input is invalid, use only integer numbers in range 1-6"
  exit 1
fi


collect_data

display_data "$@"

