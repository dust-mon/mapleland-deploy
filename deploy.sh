#!/usr/bin/env bash

# GitHub Pages 배포 스크립트

set -e

echo "GitHub Pages로 배포를 시작합니다..."

# 현재 브랜치 확인
CURRENT_BRANCH=$(git branch --show-current)

# main 브랜치로 이동 (이미 main 브랜치라면 스킵)
if [ "$CURRENT_BRANCH" != "main" ]; then
  git checkout main
fi

# gh-pages 브랜치로 전환
git checkout gh-pages

# main 브랜치에서 dist 폴더 가져오기
git checkout main -- dist/

# 기존 파일 제거 (dist 폴더 제외)
git rm -rf --ignore-unmatch *.html *.js *.txt 2>/dev/null || true

# dist 폴더 내용을 루트로 이동
mv dist/* . 2>/dev/null || true
rm -rf dist 2>/dev/null || true

# 변경사항 커밋
git add -A
git commit -m "Deploy to GitHub Pages - $(date '+%Y-%m-%d %H:%M:%S')" || echo "변경사항이 없습니다"

# GitHub에 푸시
echo "GitHub에 푸시합니다..."
git push origin gh-pages

# main 브랜치로 복귀
git checkout main

echo "배포가 완료되었습니다!"
echo "GitHub Pages 설정: https://github.com/dust-mon/mapleland-deploy/settings/pages"
echo "배포된 사이트: https://dust-mon.github.io/mapleland-deploy/"

