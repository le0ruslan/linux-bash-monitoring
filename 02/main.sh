#!/bin/bash

source ./number_of_parameters.sh
source ./collect_data.sh
source ./display_data.sh
source ./save_data.sh

if number_of_parameters "$@"; then
  echo "Input is invalid, use without parameters"
  exit 1
fi


collect_data

display_data

read -p "Do you want to save this data to a file? (Y/N): " response
if [[ "$response" == "Y" || "$response" == "y" ]]; then
    save_data
else
    echo "Data not saved"
fi
