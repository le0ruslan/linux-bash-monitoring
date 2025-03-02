#!/bin/bash

collect_data() {
    HOSTNAME=$(uname -n)
    TIMEZONE=$(timedatectl | grep "Time zone" | awk -F': ' '{print $2}')
    USER=$(whoami)
    OS=$(hostnamectl | awk '/Operating System/ {sub(/^.*:[ \t]*/, ""); print}')
    DATE=$(date "+%d %B %Y %H:%M:%S")
    UPTIME=$(uptime -p)
    UPTIME_SEC=$(awk '{print int($1)}' /proc/uptime)
    IP=$(ifconfig | awk '/inet /{print $2}' | head -n 1)
    MASK=$(ifconfig | awk '/netmask/{print $4}' | head -n 1)
    GATEWAY=$(ip route | awk '/default/{print $3}')
    RAM_TOTAL=$(free --mega -t | awk '/Total:/{print $2 / 1000}')
    RAM_USED=$(free --mega -t | awk '/Total:/{print $3 / 1000}')
    RAM_FREE=$(free --mega -t | awk '/Total:/{print $4 / 1000}')
    SPACE_ROOT=$(df / | awk '$6 == "/" {printf "%.2f MB", $2/1024}')
    SPACE_ROOT_USED=$(df / | awk '$6 == "/" {printf "%.2f MB", $3/1024}')
    SPACE_ROOT_FREE=$(df / | awk '$6 == "/" {printf "%.2f MB", $4/1024}')
}
