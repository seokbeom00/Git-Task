#!/usr/bin/env bash

source ./lib/import.sh

import "colorEcho"


currentBranch=$(git branch --show-current)
readBranch=$1

function validateBranchIsInitAtRemote () {
    printWhite "${1} 의 존재 여부 검사"
    if [ "$(git branch | grep -w -c "${1}")" -eq 0 ]; then
         printRed "아직 준비되지 않은 내용입니다."
         exit 1
    fi
    printGreen "${1} 브랜치를 확인하였습니다."
}

function switchMainBranch() {
    if [ "$currentBranch" != "main" ]; then
         printWhite "main branch 로 이동합니다"
         git checkout main
    fi
}

function switchTaskBranch() {
    validateBranchIsInitAtRemote "${1}"
    switchMainBranch
    printWhite "${1} 브랜치로 이동합니다."
    if [ "$(git branch | grep -w -c "${1}")" -eq 0 ]; then
         git branch "$1"
    fi
    git checkout "$1"
    git pull origin "$1"
    bash "./task-${1}.sh"
}

switchTaskBranch "$readBranch"
