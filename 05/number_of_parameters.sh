#!/bin/bash

number_of_parameters(){
if ! [[ $# -ne 1 ]]; then
    return 1
fi
    return 0
}