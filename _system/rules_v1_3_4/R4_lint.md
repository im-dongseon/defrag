# R4. 변동 기반 국소 점검 (Targeted Thin-Linting) 및 Checkpoint

← [index.md](index.md)로 돌아가기

---

## Lint 트리거 조건

다음 세 조건 중 하나 충족 시 발동합니다.

1. `00_Inbox` 파일 수 10건 초과 시
2. 사용자 강제 실행 시
3. 매 에이전트 기동 시 Dashboard의 가장 최근 `[Lint]` 완료 로그 날짜와 현재 시각을 대조하여 **7일 이상 경과** 시 자동 발동

## Resume(재개) 메커니즘 📌

작업 중단 후 재가동 시:

1. Dashboard에서 **최신 `[Lint]` 시작 기록의 고유 타임스탬프**를 스캔
2. 동일 타임스탬프 그룹에서 **`[Lint] 완료` 로그가 있으면** → 해당 세션은 정상 종료된 것으로 판단, 재실행하지 않음
3. **`[Lint] 완료` 로그가 없으면** → 미완료된 가장 최근 `[Lint-Step]`의 다음 순서부터 재개

## 7단계 Checkpoint 실행 순서

### Step 1. Lint 시간 선기록
`[Lint][YYYYMMDD-HHmm] 시작` 로그를 Dashboard에 최우선 입력합니다.  
**이 Lint 세션의 모든 `[Lint-Step]` 및 `[Lint] 완료` 로그는 자정이 지나도 이 최초 타임스탬프를 끝까지 고정 유지합니다.**

### Step 2. 캐시 만료 및 Sidecar 검사
- `[Cache][YYYYMMDD]` 이력 중 7일 초과 항목 → `[Cache-Expired]`로 변환
- **`location`** 링크 깨짐 점검 — **메타데이터 경로 형식 검사(Obsidian URI 또는 Vault 상대 경로 패턴 유효성)에 한정**하며, Archive 내 실제 파일 존재 확인은 수행하지 않습니다 (Archive 읽기 금지 원칙 유지 — [R8_security.md](R8_security.md) 참조).
- **전역 디렉토리 구조 정합성 검사:** `10-19`, `20-29`, `30-39` 하위 폴더가 `[번호]_` 패턴(예: `10_`, `20_`, `30_`)으로 시작하는지, 그리고 모든 파일이 주제 폴더 내부에 위치하는지 점검합니다. 위반 시 `[Log] 구조 위반: 경로` 기록 후 규칙에 맞게 재배치를 유도합니다.
- 완료 시: `[Lint-Step][YYYYMMDD-HHmm][2_캐시점검] 완료`

### Step 3. 고립 노트(Orphan) 검사
Archive를 제외한 파일 목록 확보:
```javascript
app.vault.getMarkdownFiles().filter(f =>
  !f.path.startsWith('91_') &&
  !f.path.startsWith('92_') &&
  !f.path.startsWith('99_') &&
  !f.path.startsWith('01_System/')
)
```
- **Obsidian 미구동 시:** 전역 그래프 추적 불가. 이 단계는 스킵하고 `[Log] Orphan 탐지 제한` 기록.
- 완료 시: `[Lint-Step][YYYYMMDD-HHmm][3_Orphan] 완료`

### Step 4. 비표준 태그 일괄 변환
구형 태그 발견 시 `kebab-case`로 치환.  
완료 시: `[Lint-Step][YYYYMMDD-HHmm][4_태그변환] 완료`

### Step 5. `unsorted/` 도메인 재배치

**재배치 근거 데이터:** Dashboard의 `[Unsorted]` 로그를 1순위로 참조합니다. Log Rotation으로 로그가 `99_History/`로 이동하여 소실된 경우, `00_Inbox/unsorted/` 디렉토리 직접 스캔을 fallback으로 사용하며 Rotation 이전과 동일하게 처리합니다.

**타입별 재배치 목적지:**

| `unsorted/` 내 항목 타입 | 도메인 판단 성공 시 | 도메인 판단 실패 시 |
|--------------------------|-------------------|-------------------|
| 바이너리 원본 | `91_Raw_Archive/assets/[도메인]/`으로 이주 (R8 Archive 쓰기 예외 허용 — [R8_security.md](R8_security.md) 참조) | `unsorted/`에 유지 + Dashboard `[Log] unsorted 재배치 불가: 파일명` |
| 텍스트 노트 | `20-29` 또는 `30-39` 위키로 이동 | `unsorted/`에 유지 + Dashboard `[Log] unsorted 재배치 불가: 파일명` |
| Sidecar 노트 (`type: source`) | `20-29` 또는 `30-39` 위키로 이동 | `unsorted/`에 유지 + Dashboard `[Log] unsorted 재배치 불가: 파일명` |

**바이너리 원본 이주 후 `location` 갱신 의무 (→ [I-1] 반영):**  
바이너리 원본을 Archive로 이주한 직후, 해당 원본과 연결된 Sidecar 노트의 **`location`** 경로를 임시값(`00_Inbox/unsorted/파일명`)에서 최종 Archive 경로를 포함한 **Obsidian URI**(URL Encoded)로 즉시 갱신합니다.

완료 시: `[Lint-Step][YYYYMMDD-HHmm][5_unsorted] 완료`

### Step 6. 빈약 문서(Thin-Article) 보강
텍스트 분량 극소 노트를 색출하여 구조 보강 및 `updated` 갱신.  
추론 자동 진행 / 외부 스니펫만 사용자 승인 대기.  
완료 시: `[Lint-Step][YYYYMMDD-HHmm][6_문서보강] 완료`

### Step 7. R7/R5 연계 점검 릴레이
**실행 순서 엄수:** R7(중복 점검) 선행 완료 → R5(합성 점검/생성) 후행 전개.  
종료 후:
1. `[Lint-Step][YYYYMMDD-HHmm][7_중복점검/합성] 완료`
2. **`[Lint][YYYYMMDD-HHmm] 완료`** ← 이 로그가 있는 세션은 Resume 대상 제외
