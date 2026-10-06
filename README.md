# calloflabs.github.io

**Call of Labs** — 대학원생을 위한 미니게임 아케이드. https://calloflabs.github.io

연구실에서 만든 웹게임들을 한 곳에 모아 두는 랜딩 페이지입니다. 게임 자체는 각자의 저장소와 Vercel에서 돌아가고 이 페이지는 카드로 연결만 합니다.

## 수록 게임

| 게임 | 플레이 | 저장소 |
| --- | --- | --- |
| 연구실에서 살아남기 | https://lab-survival.vercel.app | [lab-survival](https://github.com/calloflabs/lab-survival) |
| 어쩔수가없다 | https://no-other-choice.vercel.app | [no-other-choice](https://github.com/calloflabs/no-other-choice) |
| 학회 가는 길 | https://road-to-the-conference.vercel.app | [road-to-the-conference](https://github.com/calloflabs/road-to-the-conference) |
| HBM 수박게임 | https://stack-hbm.vercel.app | [stack-hbm](https://github.com/calloflabs/stack-hbm) |
| 졸업의 탑 | https://calloflabs.github.io/tower-of-graduation/ | 이 저장소 `tower-of-graduation/` |
| 초록 제출하러 가는 길 | https://calloflabs.github.io/road-to-submission/ | 이 저장소 `road-to-submission/` |

졸업의 탑과 초록 제출하러 가는 길은 별도 저장소 없이 이 저장소의 하위 폴더에서 서빙됩니다. Vercel 프로젝트(tower-of-graduation · road-to-submission)도 같은 저장소를 Root Directory만 다르게 잡아 배포합니다. 랭킹 테이블 SQL은 `supabase/`에 있습니다.

영어는 `?lang=en` 으로 전환됩니다. 영어판이 있는 게임은 카드도 선택한 언어로 링크됩니다.

## 게임 추가하는 법

1. `img/<id>.webp` 썸네일(600×750) 추가
2. `index.html` 의 `GAMES` 배열에 항목 하나 추가 (id · url · repo · img · ko/en 제목과 설명 · tags)
3. 커밋하면 GitHub Pages가 알아서 다시 배포

## 구조

- `index.html` — 단일 파일. 외부 의존성은 폰트 두 종(Galmuri · Pretendard · jsDelivr)뿐
- `img/` — 게임 썸네일
- `tower-of-graduation/` `road-to-submission/` — 여기서 직접 서빙하는 게임(각각 index.html 하나)
- `supabase/` — 랭킹 테이블 생성 SQL
