#!/usr/bin/env bash

source ./lib/import.sh

import "colorEcho"

userName="$(git config user.name | grep ".*")"


if [ "$(git reflog | grep -c "reset: moving to HEAD^")" -eq 0 ]; then
     printRed "HEAD^ 를 통한 reset이 확인되지 않았습니다."
else
    printGreen "HEAD^를 통한 reset이 확인되었습니다."
fi

if [ "$(git reflog | grep -c "reset: moving to HEAD@")" -eq 0 ]; then
     printRed "reflog 를 통한 reset이 확인되지 않았습니다."
else
    printGreen "reflog 를 통한 reset이 확인되었습니다."
fi

if [ "$(git reflog | grep -c "reset: moving to HEAD~1")" -eq 0 ]; then
     printRed "HEAD~1 를 통한 reset이 확인되지 않았습니다."
else
    printGreen "HEAD~1를 통한 reset이 확인되었습니다."
fi

if [ "$(git reflog | grep -c "revert:")" -eq 0 ]; then
     printRed "revert가 확인되지 않았습니다."
else
    printGreen "reset가 확인되었습니다."
fi

printWhite "$(git reflog --author $userName)"
