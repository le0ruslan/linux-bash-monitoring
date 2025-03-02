#!/bin/bash

collect_data() {
    START_TIME=$(date +%s.%N)

    TOTAL_FOLDERS=$(find "$1" -type d | wc -l)

    TOP_FOLDERS=$(du -sh "$1"*/ 2>/dev/null | sort -hr | head -n 5 | awk '{print NR " - " $2 ", " $1}')

    TOTAL_FILES=$(find "$1" -type f | wc -l)

    CONFIG_FILES=$(find "$1" -type f -name "*.conf" | wc -l)
    TEXT_FILES=$(find "$1" -type f -exec file --mime-type {} + | grep -c 'text/')
    EXECUTABLE_FILES=$(find "$1" -type f -executable | wc -l)
    LOG_FILES=$(find "$1" -type f -name "*.log" | wc -l)
    ARCHIVE_FILES=$(find "$1" -type f \( -name "*.tar" -o -name "*.gz" -o -name "*.zip" \) | wc -l)
    SYMLINK_FILES=$(find "$1" -type l | wc -l)

    TOP_FILES=$(find "$1" -type f -exec du -h {} + 2>/dev/null | sort -hr | head -n 10 | awk '{print NR " - " $2 ", " $1 ", " ($2 ~ /\.(.*)$/ ? gensub(/.*\./, "", 1, $2) : "unknown")}')

    TOP_EXECUTABLES=$(find "$1" -type f -executable -exec du -h {} + 2>/dev/null | sort -hr | head -n 10 | awk '{cmd="md5sum \"" $2 "\""; cmd | getline hash; close(cmd); split(hash, arr, " "); print NR " - " $2 ", " $1 ", " arr[1]}')

    END_TIME=$(date +%s.%N)
    EXECUTION_TIME=$(echo "$END_TIME - $START_TIME" | bc)
}
