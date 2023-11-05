#!/usr/bin/env bash

source ./lib/import.sh

import "colorEcho"
printGreen ">> 실습 파일 생성"
echo "3주차 과제" > week3-task.txt
git add week3-task.txt
git commit -m "feat: root commit"

echo "A 기능" >> week3-task.txt
git add week3-task.txt
git commit -m "feat: A기능 추가"

echo "B 기능" >> week3-task.txt
git add week3-task.txt
git commit -m "feat: B기능 추가"
printGreen ">> 실습에 필요한 내용 작성 완료"

cat week3-requirments.txt