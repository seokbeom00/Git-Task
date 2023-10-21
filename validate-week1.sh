#!/usr/bin/env bash

source ./lib/import.sh

import "colorEcho"

#git log --author "$(git config user.name | grep ".*")"

userName="$(git config user.name | grep ".*")"

printWhite "$userName"

if [ "$(git log --author "$userName" | grep -w -c "commit")" -lt 2 ]; then
     printRed "$userName 의 Commit 내역이 확인되지 않습니다."
     printRed "$(git log --author "$userName")"
fi

printGreen "$userName 의 Commit 내역이 확인되었습니다."
printWhite ">>>>>>>>>>"
printGreen "$(git log --author "$userName")"
printWhite ">>>>>>>>>>"
printGreen "과제 성공"
