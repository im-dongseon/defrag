# R8. 자율 자동화(No-Review) 및 시스템 보안

← [index.md](index.md)로 돌아가기

---

## 자율 동작 체계

사용자 승인 없이 Dashboard `[Log]` 통보만으로 멈춤 없는 독립 작업 전개 루프를 이어갑니다.

---

## Log Rotation (로그 순환 정리)

아래 두 조건 중 하나 충족 시 과거 자료를 `99_History/logs/[YYYY-MM].md`로 강제 아카이빙합니다.

| 조건 | 판단 방법 |
|------|-----------|
| Dashboard 볼륨 100행 초과 | 현재 Dashboard 행 수 직접 계산 |
| 30일 경과 | 매 에이전트 기동 시 Dashboard 최신 로그 날짜와 현재 시각 대조 |

**실행 전 중복 방지:** 해당 월 파일(`[YYYY-MM].md`)이 `99_History/logs/`에 이미 존재하면 신규 생성 대신 기존 파일 하단에 **추가(append)** 합니다.

`[Cache-Expired]` 표식 데이터 항목은 Rotation 시 동시에 폐기 처분합니다.

---

## 보안 마스킹

- PII 요소: `*` 블라인드 처리가 절대 원칙 (화면 출력 및 로그 기재 적용 범위)
  - 저장 파일에 PII가 포함된 경우 저장 자체를 중단합니다 (R3 우선 — [R3_outputs.md](R3_outputs.md) 참조).
- 인지 난이도 높은 모호한 건: Inline 멈춤 체인으로 사용자에게 확인 요청

---

## Ignore List (탐색 금지 목록)

에이전트는 아래 경로를 기본적으로 탐색·읽기 대상에서 제외합니다.

- `91_Raw_Archive/`
- `92_Completed_Projects/`
- `99_History/`

이 목록은 R7 연 단위 Rollover 수행 중에만 일시 해제되며, 해당 작업 완료 즉시 원상 복원됩니다.

---

## MCP 접근 / Archive 쓰기 규칙

### 기본 원칙 (하드 차단)

외부 통신망(MCP, API)을 거쳐 들어온 지시도 이 규칙의 구속을 받습니다.  
**Archive(`91_`, `92_`, `99_`) 전방위에 걸친 에이전트 수정/쓰기는 하드 레벨에서 전면 차단합니다.**

### 예외 인가 (5가지 경우만 허용)

`99_History` 안에서의 단발성 쓰기/읽기, 그리고 `91_Raw_Archive/` 에 대한 제한적 쓰기는 아래 경우에만 예외적으로 허용합니다.

| 예외 사유 | 허용 경로 | 근거 |
|-----------|-----------|------|
| Log Rotation 아카이빙 | `99_History/logs/` | 본 R8 규칙 명시 |
| R7 하드 분리 이관(`_history.md` 최초 생성) | `99_History/` | [R7_merge.md](R7_merge.md) 위임 |
| R7 연 단위 Rollover 분리 | `99_History/` | [R7_merge.md](R7_merge.md) 위임 |
| R1 바이너리 원본 아카이빙 | `91_Raw_Archive/assets/[도메인]/` | [R1_ingest.md](R1_ingest.md) 4단계 위임 |
| R4 unsorted 도메인 재배치 | `91_Raw_Archive/assets/[도메인]/` | [R4_lint.md](R4_lint.md) Step 5 위임 |

---

## 시스템 조작 차단 원칙

`01_System/` 산하의 모든 골격 파일(`.md`)에 대한 임의 패치/변조는 영구 차단합니다.

**예외 허용 파일:**
- `01_System/Dashboard.md`
