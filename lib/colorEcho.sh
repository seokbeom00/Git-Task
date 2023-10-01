#!/usr/bin/env bash

function printRed() {
    echo "$(tput setaf 1)""${1}""$(tput sgr0)"
}

function printGreen() {
    echo "$(tput setaf 2)""${1}""$(tput sgr0)"
}

function printWhite() {
    echo "$(tput setaf 7)""${1}""$(tput sgr0)"
}
