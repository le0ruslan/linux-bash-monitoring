#!/bin/bash

source ./number_of_parameters.sh
source ./check_input.sh
source ./collect_data.sh
source ./display_data.sh

if number_of_parameters "$@"; then
  echo "Input is invalid: please use only one parameter like this /var/log/"
  exit 1
fi

if check_input "$@"; then
  echo "Input is invalid: directory will be like this /var/log/"
  exit 1
fi

collect_data "$@"

display_data