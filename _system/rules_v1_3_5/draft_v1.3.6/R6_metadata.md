# R6. 메타데이터 (Frontmatter) 구성 체계

← [index.md](index.md)로 돌아가기

---

## 태그 표기 단일화

전역 시스템의 모든 태그는 **소문자 하이픈(`kebab-case`)** 원칙입니다.  
비표준 태그 변환 작업은 R4 Lint 4단계에서 자동 처리합니다.

## `status` 에이전트 전환 위임

에이전트는 `active` | `idea` | `deprecated` 필드를 자율 전환할 수 있습니다.  
단, 변경 시 Dashboard에 반드시 아래 포맷으로 기록해야 합니다.

```
[Log] status 변경: [파일명] [이전상태] -> [새상태] (사유)
```

## 기본 Frontmatter 템플릿

```yaml
---
id: {{YYYYMMDDHHmm_KST}}
title: {{파일명 또는 핵심 주제}}
type: {{tech | project | admin | source | synthesis | output}}
tags: [키워드1, 키워드2] # 최소 2개 필수
status: {{active | idea | deprecated}}
location: "obsidian://open?vault=defrag&file=[URL_Encoded_Path]"
created: {{date}}
updated: {{date}}
---
```

- `id`: KST(UTC+9) 기준 시각
- `title`: 파일명에서 확장자를 제외한 이름을 기본으로 하되, 파일명이 중복 배제 원칙에 의해 지나치게 짧을 경우(예: `30_회의록_2026-04-09.md`) 문서의 핵심 주제를 포함하여 서술적으로 작성할 수 있습니다. (예: `30_Project-X 주간 업무 공유 회의록`)
- `updated`: 소스/본문 데이터의 실질적 변경 시에만 갱신
- `type: source`: Sidecar 노트의 배치 위치는 [R1_ingest.md](R1_ingest.md) 3단계 기준(도메인 및 주제별 하위 디렉토리 계층)을 따릅니다.
  - **올바른 예시:** `30-39/30_Project-X/참고자료/파일명.md` (카테고리 번호 할당 및 번호 없는 주제 폴더 포함)
  - **잘못된 예시:** `20-29/Category-A/파일명.md` (카테고리 번호 누락)
  - **잘못된 예시:** `10-19/10_Category-A/10_Subject-A/파일명.md` (세부 주제에 중복 번호 부여)
  - **본문 구성:** 본문 최상단에 별도의 원본 링크를 삽입하지 않습니다. (Frontmatter의 `location` 필드를 통해 직접 호출 가능)
  - **location 필드:** 반드시 **URL Encoded Obsidian URI** 형식을 사용합니다.
    - 예시: `location: "obsidian://open?vault=defrag&file=91_Raw_Archive%2Fassets%2F..."`

### `type: synthesis` 전용 추가 필드

`type: synthesis` 노트 생성 시에만 **에이전트가 직접** YAML 내부에 `sources` 배열 필드를 추가하여 부모 노드의 파일 경로를 필수 기입합니다.

```yaml
sources:
  - /20_Category-A/parent-note-a.md
  - /30_Project-X/parent-note-b.md
```

## 폴백 시 하드코딩 의무

Templater 플러그인 미작동 시 `{{ ... }}` 치환 코드가 원문으로 남지 않도록, **에이전트가 직접 KST 시각 등을 계산해 하드코딩으로 대체 기입**해야 합니다.
