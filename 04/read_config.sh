#!/bin/bash

read_config() {
  column1_background=$(awk -F'=' '/column1_background=/ {print $2}' ./colors.conf)
    if [ "$column1_background" == "" ]; then
        column1_background="6"
    fi

  column1_font_color=$(awk -F'=' '/column1_font_color=/ {print $2}' ./colors.conf)
    if [ "$column1_font_color" == "" ]; then
        column1_font_color="1"
    fi

  column2_background=$(awk -F'=' '/column2_background=/ {print $2}' ./colors.conf)
    if [ "$column2_background" == "" ]; then
        column2_background="2"
    fi

  column2_font_color=$(awk -F'=' '/column2_font_color=/ {print $2}' ./colors.conf)
    if [ "$column2_font_color" == "" ]; then
        column2_font_color="4"
    fi

  params=("$column1_background" "$column1_font_color" "$column2_background" "$column2_font_color")


  echo "${params[@]}"
}
