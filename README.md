# calloflabs.github.io

**Call of Labs** — 대학원생을 위한 미니게임 아케이드. https://calloflabs.github.io

연구실에서 만든 웹게임들을 한 곳에 모아 두는 랜딩 페이지입니다. 게임 자체는 각자의 저장소와 Vercel에서 돌아가고 이 페이지는 카드로 연결만 합니다.

## 수록 게임

| 게임 | 플레이 |
| --- | --- |
| 연구실에서 살아남기 | https://lab-survival.vercel.app |
| 어쩔수가없다 | https://no-other-choice.vercel.app |
| 학회 가는 길 | https://road-to-the-conference.vercel.app |
| HBM 수박게임 | https://stack-hbm.vercel.app |
| 졸업의 탑 | https://tower-of-graduation.vercel.app |
| 초록 제출하러 가는 길 | https://road-to-submission.vercel.app |

영어는 `?lang=en` 으로 전환됩니다. 카드도 선택한 언어로 링크됩니다.

## 게임 추가하는 법

1. `img/<id>.webp` 썸네일(600×750) 추가
2. `index.html` 의 `GAMES` 배열에 항목 하나 추가 (id · url · img · ko/en 제목과 설명 · tags)
3. 커밋하면 GitHub Pages가 알아서 다시 배포

## 구조

- `index.html` — 단일 파일. 외부 의존성은 폰트 두 종(Galmuri · Pretendard · jsDelivr)뿐
- `img/` — 게임 썸네일
