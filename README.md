# Mapleland Deploy

Vue.js 프로젝트를 GitHub Pages로 배포하는 저장소입니다.

## 배포 방법

### 🚀 자동 배포 (권장)

`main` 브랜치에 코드를 푸시하면 GitHub Actions가 자동으로 배포합니다:

```bash
git add .
git commit -m "Update content"
git push origin main
```

푸시 후 GitHub Actions 탭에서 배포 진행 상황을 확인할 수 있습니다.

### 수동 배포 (옵션 1)

gh-pages 브랜치를 직접 푸시:

```bash
git push origin gh-pages
```

### 수동 배포 (옵션 2) - 로컬 스크립트

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

## 파일 구조

```
dist/
├── .nojekyll          # Jekyll 처리 비활성화 (GitHub Pages에서 필수)
├── 404.html           # SPA 라우팅 지원을 위한 fallback 페이지
├── index.html         # 메인 HTML 파일
├── app.obf.js         # 난독화된 Vue.js 애플리케이션
└── ads.txt            # Google AdSense 설정
```

## GitHub Pages 설정

- **`.nojekyll`**: Jekyll 처리를 비활성화하여 모든 파일이 있는 그대로 제공됩니다
- **`404.html`**: 존재하지 않는 경로로 접근 시 자동으로 index.html로 리다이렉트
- **난독화된 JS**: `app.obf.js` 파일이 Vue.js 애플리케이션을 포함

## 주의사항

- `dist` 폴더에 빌드된 파일이 있어야 합니다
- GitHub Pages 설정에서 `gh-pages` 브랜치를 소스로 선택해야 합니다

