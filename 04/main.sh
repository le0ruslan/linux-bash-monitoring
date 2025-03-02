#!/bin/bash

source ./number_of_parameters.sh
source ./conf_is_found.sh
source ./read_config.sh
source ./check_input.sh
source ./different_colors.sh
source ./collect_data.sh
source ./display_data.sh
source ./display_colors.sh

if number_of_parameters "$@"; then
  echo "Input is invalid: don't use parameters"
  exit 1
fi

if ! conf_is_found; then
  echo "Configuration file 'colors.conf' not found"
  exit 1
fi

params=($(read_config))

if check_input "${params[@]}"; then
  if ! different_colors "${params[@]}"; then
    echo "Input is invalid: use different colors for background and text. Please try again."
    exit 0
  fi
else
  echo "Input is invalid: use only integer numbers in the range 1-6."
  exit 1
fi

collect_data

display_data "${params[@]}"

display_colors "${params[@]}"