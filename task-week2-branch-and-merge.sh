#!/usr/bin/env bash

source ./lib/import.sh

import "colorEcho"

printGreen ">> 실습 파일 생성 "
echo "과제 파일">>practice.txt
git add practice.txt
git commit -m "feat: 과제 파일 추가"
printGreen "과제 진행용 파일 추가"
# ff가 되도록 내용 추가
git switch -c task-ff
echo "$(git config user.name)">>practice.txt
git add practice.txt
git commit -m "feat: ff"
printGreen "fast-forward 실습용 브렌치 및 내용 추가"
git switch week2-branch-and-merge
# tw가 되도록 내용 추가
git switch -c task-tw
echo "과제: $(git config user.name)">practice.txt
git add practice.txt
git commit -m "feat:tw"
printGreen "3-way 실습용 브렌치 및 내용 추가"
# 돌아오기
git switch week2-branch-and-merge
printGreen ">> 실습에 필요한 내용 작성 완료"


cat week2-requirements.txt
