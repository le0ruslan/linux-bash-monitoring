#!/bin/bash
conf_is_found(){
if ! [[ -f "colors.conf" ]]; then
    return 1
fi
return 0
}