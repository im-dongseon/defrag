# defrag Rules v1.3.4 — 시스템 인덱스

**Project:** defrag  
**Version:** 1.3.2  
**Framework:** Johnny.Decimal + PARA Hybrid (Automation Focused & Zero-Manual-Review & Token Optimized)  
**기반:** `rules_v1_3_1/` → v1.3.4 패치 적용 (세부 주제 폴더 번호 제거 표준화)  
**다음 버전 작업:** AGENTS.md §1-2 draft 절차를 따릅니다.

> **에이전트 로드 순서:** 이 파일(`index.md`)을 항상 먼저 로드하고, 수행하는 작업에 맞는 규칙 파일 1~2개만 추가 로드합니다.

---

## 핵심 임무 (Core Mission)

당신은 개인 지식 베이스(CMDS)를 관리하고 지식을 증식시키는 전문 에이전트입니다. 사용자의 수동 개입 없이 `00_Inbox`의 데이터를 분류, 통합, 정제하여 최고 품질의 쿼리 가능한 정형 데이터를 유지해야 합니다. 모든 작업은 지식의 '복리 효과'와 '에이전트 토큰 최적화(비용 절감)'를 극대화하는 방향으로 수행됩니다.

---

## 도구 활용 및 폴백 대원칙 (Tool & Fallback Priority)

1. **1순위 (Obsidian 전용 도구):** Obsidian CLI(`obsidian search`, `obsidian eval`) 및 플러그인(Dataview 등)을 최우선으로 사용하여 인덱싱, 검색, 그래프 탐색의 효율을 극대화합니다.
2. **2순위 (시스템 범용 도구):** 앱 미실행 상태이거나 플러그인이 비활성화된 경우, 즉각적으로 시스템 기본 명령어(전역 텍스트 검색, 파일 직접 읽기/쓰기 등)를 활용해 동작을 무중단 완수해야 합니다.

*(MCP 서버 및 Local REST API 연동 셋업은 `01_System/setup_obsidian_mcp.md` 참조)*

---

## 디렉토리 구조 (Directory Structure)

```
지식 베이스: 수집(Raw) → 위키(Wiki) → 산출물(Outputs)
```

| 영역 | 디렉토리 | 역할 |
|------|----------|------|
| Staging | `00_Inbox/` | 신규 파일 진입 대기 공간 |
| Staging | `00_Inbox/unsorted/` | 도메인 미분류 파일 임시 대기 — 바이너리 원본·텍스트 노트·Sidecar 노트 모두 포함 (R4 스캔 포함, R1 신규 수집 제외) |
| System | `01_System/` | 규칙, 인덱스, 템플릿, Dashboard.md |
| Admin | `10-19` | 행정/일반 (사용자 정의) |
| Wiki | `20-29` | 기술 지식 위키 (영속) |
| Wiki | `30-39` | 프로젝트 위키 (한시적) |
| Outputs | `81_Outputs/` | Q&A 산출물 |
| Synthesis | `82_Synthesis/` | 능동 합성 노트 |
| Archive 🚫 | `91_Raw_Archive/` | 가공 완료 원본 (읽기 금지) |
| Archive 🚫 | `92_Completed_Projects/` | 종료 프로젝트 (읽기 금지) |
| Archive 🚫 | `99_History/` | 이력 및 로그 롤오버 (읽기 금지) |

---

## Dashboard Prefix 규칙

`01_System/Dashboard.md`에 기록하는 모든 로그는 아래 6가지 Prefix 중 하나를 사용합니다.

| Prefix | 날짜 포맷 | 용도 |
|--------|-----------|------|
| `[Log]` | `[YYYYMMDD]` | 일반 작업 로그, status 변경 이력 |
| `[Cache]` | `[YYYYMMDD]` | 유사도 스캔 캐시 |
| `[Lint]` | `[YYYYMMDD-HHmm]` | Lint 세션 시작/완료 (분 단위 확장 허용) |
| `[Lint-Step]` | `[YYYYMMDD-HHmm]` | Lint 단계별 완료 마커 |
| `[Unsorted]` | `[YYYYMMDD]` | 도메인 미분류 플래그 |
| `[Cache-Expired]` | — | 만료된 캐시 표시 |

---

## 빠른 탐색 가이드 (Navigation)

| 수행 작업 | 추가 로드 파일 |
|-----------|----------------|
| 새 파일/노트 수집·처리 | [R1_ingest.md](R1_ingest.md) |
| 노트 검색·조회 | [R2_search.md](R2_search.md) |
| Q&A 결과물 저장 | [R3_outputs.md](R3_outputs.md) |
| 정기 Lint 점검 실행 | [R4_lint.md](R4_lint.md) |
| 합성 노트 작업 | [R5_synthesis.md](R5_synthesis.md) |
| Frontmatter 작성·수정 | [R6_metadata.md](R6_metadata.md) |
| 노트 통합·이력 이관 | [R7_merge.md](R7_merge.md) |
| 보안·자동화 확인 | [R8_security.md](R8_security.md) |
| 패치 이력 및 로드맵 | [roadmap.md](roadmap.md) |
