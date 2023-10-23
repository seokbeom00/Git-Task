#!/usr/bin/env bash

source ./lib/import.sh

import "colorEcho"

userName="$(git config user.name | grep ".*")"

if [ "$(git branch | grep -c "$userName")" -eq 0 ]; then
    printRed "$userName branch가 확인되지 않았습니다."
else
    printGreen "Step1. $userName branch 생성을 확인했습니다."
fi

if [ "$(git branch --show-current | grep -c "$userName")" -eq 0 ]; then
    printRed "$userName branch로 이동이 확인되지 않았습니다."
else
    printGreen "Step2. $userName branch로 이동이 확인되었습니다"
fi

if [ "$(git reflog | grep -c "merge task-ff: Fast-forward")" -eq 0 ]; then
    printRed "fast-forward merge가 확인되지 않았습니다."
else
    printGreen "Step3. fast-forward merge가 확인되었습니다."
fi

if [ "$(git reflog | grep -c "commit (merge)")" -eq 0 ]; then
    printRed "3-way merge가 확인되지 않았습니다."
else
    printGreen "Step4. 3-way merge가 확인되었습니다."
fi

