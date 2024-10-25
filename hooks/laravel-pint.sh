#!/usr/bin/env bash

color_red="\033[0;31m"
color_reset="\033[0m"

title="Laravel Pint"

if [ -f ./vendor/bin/sail ]; then
  ./vendor/bin/sail pint
elif hash php 2> /dev/null; then
    ./vendor/bin/pint
else
    echo -e "${color_red}${title} is not found.${color_reset}"
    echo "php or sail is required."
    exit 1
fi
