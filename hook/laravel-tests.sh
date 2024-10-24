#!/usr/bin/env bash

color_red="\033[0;31m"
color_reset="\033[0m"

if [ ! -f "artisan" ]; then
    echo -e "${color_red}artisan CLI is missing.${color_reset}"
    echo -e "${color_red}Are you sure this is a Laravel project?${color_reset}"
    exit 1
fi

sail artisan test "${@}"
