#!/bin/bash

declare -A BG_COLORS
declare -A FONT_COLORS

BG_COLORS=(
  [1]="47"  # White 
  [2]="41"  # Red 
  [3]="42"  # Green 
  [4]="44"  # Blue 
  [5]="45"  # Purple 
  [6]="40"  # Black 
)

FONT_COLORS=(
  [1]="37"  # White 
  [2]="31"  # Red 
  [3]="32"  # Green 
  [4]="34"  # Blue 
  [5]="35"  # Purple 
  [6]="30"  # Black 
)



print_colored() {
  local bg_color="$1"
  local font_color="$2"
  local text="$3"
  printf "\e[%sm\e[%sm%s\e[0m\n" "$bg_color" "$font_color" "$text"

}


display_data() {
    bg_name="${BG_COLORS[$1]}"
    font_name="${FONT_COLORS[$2]}"
    bg_value="${BG_COLORS[$3]}"
    font_value="${FONT_COLORS[$4]}"

    printf "$(print_colored "$bg_name" "$font_name" "HOSTNAME =") $(print_colored "$bg_value" "$font_value" "$HOSTNAME")\n"
    printf "$(print_colored "$bg_name" "$font_name" "TIMEZONE =") $(print_colored "$bg_value" "$font_value" "$TIMEZONE")\n"
    printf "$(print_colored "$bg_name" "$font_name" "USER =") $(print_colored "$bg_value" "$font_value" "$USER")\n"
    printf "$(print_colored "$bg_name" "$font_name" "OS =") $(print_colored "$bg_value" "$font_value" "$OS")\n"
    printf "$(print_colored "$bg_name" "$font_name" "DATE =") $(print_colored "$bg_value" "$font_value" "$DATE")\n"
    printf "$(print_colored "$bg_name" "$font_name" "UPTIME =") $(print_colored "$bg_value" "$font_value" "$UPTIME")\n"
    printf "$(print_colored "$bg_name" "$font_name" "UPTIME_SEC =") $(print_colored "$bg_value" "$font_value" "$UPTIME_SEC")\n"
    printf "$(print_colored "$bg_name" "$font_name" "IP =") $(print_colored "$bg_value" "$font_value" "$IP")\n"
    printf "$(print_colored "$bg_name" "$font_name" "MASK =") $(print_colored "$bg_value" "$font_value" "$MASK")\n"
    printf "$(print_colored "$bg_name" "$font_name" "GATEWAY =") $(print_colored "$bg_value" "$font_value" "$GATEWAY")\n"
    printf "$(print_colored "$bg_name" "$font_name" "RAM_TOTAL =") $(print_colored "$bg_value" "$font_value" "$RAM_TOTAL")\n"
    printf "$(print_colored "$bg_name" "$font_name" "RAM_USED =") $(print_colored "$bg_value" "$font_value" "$RAM_USED")\n"
    printf "$(print_colored "$bg_name" "$font_name" "RAM_FREE =") $(print_colored "$bg_value" "$font_value" "$RAM_FREE")\n"
    printf "$(print_colored "$bg_name" "$font_name" "SPACE_ROOT =") $(print_colored "$bg_value" "$font_value" "$SPACE_ROOT")\n"
    printf "$(print_colored "$bg_name" "$font_name" "SPACE_ROOT_USED =") $(print_colored "$bg_value" "$font_value" "$SPACE_ROOT_USED")\n"
    printf "$(print_colored "$bg_name" "$font_name" "SPACE_ROOT_FREE =") $(print_colored "$bg_value" "$font_value" "$SPACE_ROOT_FREE")\n"
}

