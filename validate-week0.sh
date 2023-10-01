#!/usr/bin/env bash

source ./lib/import.sh

import "colorEcho"

printWhite ">> 과제 검사가 시작 됩니다."
if [ "$(git config user.name | grep -w -c ".*")" -eq 0 ]; then
     printRed "user name 이 확인되지 않습니다. 설정 후 다시 시도해주세요"
     exit 1
fi
printGreen "user name : $(git config user.name | grep ".*") 확인 되었습니다."

if [ "$(git config user.email | grep -w -c ".*")" -eq 0 ]; then
     printRed "user email 이 확인되지 않습니다. 설정 후 다시 시도해주세요"
     exit 1
fi
printGreen "user email : $(git config user.email | grep ".*") 확인 되었습니다."

printGreen "과제 성공"