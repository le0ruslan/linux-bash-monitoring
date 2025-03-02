#!/bin/bash

declare -A COLORS

COLORS=(
  [1]="white"  # White 
  [2]="red"  # Red 
  [3]="green"  # Green 
  [4]="blue"  # Blue 
  [5]="purple"  # Purple 
  [6]="black"  # Black 
)



display_colors() {
    bg_name="${COLORS[$1]}"
    font_name="${COLORS[$2]}"
    bg_value="${COLORS[$3]}"
    font_value="${COLORS[$4]}"

    bg_name_no="$1"
    font_name_no="$2"
    bg_value_no="$3"
    font_value_no="$4"

    column1_background=$(awk -F'=' '/column1_background=/ {print $2}' ./colors.conf)
    if [ "$column1_background" == "" ]; then
        bg_name_no="default"
    fi

      column1_font_color=$(awk -F'=' '/column1_font_color=/ {print $2}' ./colors.conf)
    if [ "$column1_font_color" == "" ]; then
        font_name_no="default"
    fi

  column2_background=$(awk -F'=' '/column2_background=/ {print $2}' ./colors.conf)
    if [ "$column2_background" == "" ]; then
        bg_value_no="default"
    fi

  column2_font_color=$(awk -F'=' '/column2_font_color=/ {print $2}' ./colors.conf)
    if [ "$column2_font_color" == "" ]; then
        font_value_no="default"
    fi

    echo
    echo "Column 1 background = $bg_name_no ($bg_name)"
    echo "Column 1 font color = $font_name_no ($font_name)"
    echo "Column 2 background = $bg_value_no ($bg_value)"
    echo "Column 2 font color = $font_value_no ($font_value)"
}

