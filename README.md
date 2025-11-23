# Mapleland Deploy

Vue.js 프로젝트를 GitHub Pages로 배포하는 저장소입니다.

## 배포 방법

### 수동 배포

이미 gh-pages 브랜치가 설정되어 있습니다. 아래 명령어로 푸시하세요:

```bash
git push origin gh-pages
```

### 자동 배포 스크립트 사용

```bash
chmod +x deploy.sh
./deploy.sh
```

## GitHub Pages 설정

1. GitHub 저장소로 이동: https://github.com/dust-mon/mapleland-deploy
2. Settings > Pages로 이동
3. Source를 `gh-pages` 브랜치로 설정
4. 배포된 사이트: https://dust-mon.github.io/mapleland-deploy/

## 구조

- `main` 브랜치: 소스 코드 및 빌드된 `dist` 폴더
- `gh-pages` 브랜치: GitHub Pages로 배포되는 정적 파일들

## 주의사항

- `dist` 폴더에 빌드된 파일이 있어야 합니다
- GitHub Pages 설정에서 `gh-pages` 브랜치를 소스로 선택해야 합니다

