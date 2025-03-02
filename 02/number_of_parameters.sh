#!/bin/bash

number_of_parameters(){
if ! [[ $# -ne 0 ]]; then
  return 1
fi
return 0
}