#!/usr/bin/env bash

function import() {
    local file="./lib/${1}.sh"
    if [ -f "${file}" ]; then
        source "${file}"
    else
        echo "Error: Cannot find library at: ${file}"
        exit 1
    fi
}