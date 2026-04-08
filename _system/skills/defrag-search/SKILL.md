---
name: defrag-search
description: defrag 지식 베이스를 3단계 프로토콜로 검색합니다.
triggers:
  - "/defrag:s"
  - "검색"
  - "찾아줘"
  - "어디있어"
  - "탐색"
---

# Defrag Search Protocol

이 스킬은 Hermes와 같은 AI 에이전트가 `defrag` 지식 베이스를 효율적으로 검색하고 활용할 수 있도록 설계되었습니다. 3단계 프로토콜을 통해 토큰 비용을 최소화하면서 정확한 정보를 찾아냅니다.

## 3단계 프로토콜 (Execution)

검색 시 항상 프로젝트 루트의 `.env` 파일에 정의된 `VAULT_DIR` 경로를 최우선으로 참조하십시오.

### 1단계: 인덱스 스캔 (Index Scanning)
```bash
# VAULT_DIR 변수가 설정된 상태라고 가정
grep -l "$1" "$VAULT_DIR"/*_index.md
```

### 2단계: 자율 경로 탐색 (Path Exploration)
```bash
find "$VAULT_DIR" -name "*$1*.md" | head -n 5
```

### 3단계: 전역 본문 검색 (Global Body Search)
```bash
grep -rli --include="*.md" --exclude-dir=".git" "$1" "$VAULT_DIR" | head -n 10
```

## Response Policy

- **기본:** 검색된 문서의 내용을 요약하고 파일 경로를 명시합니다.
- **상세 요청:** 사용자가 "전문", "발췌", "내용 보여줘"라고 하면 `cat` 명령어로 원문을 출력합니다.
  - 예: `cat "$VAULT_DIR/파일경로.md"`

## 설정 (Configuration)

이 스킬은 범용적으로 설계되었습니다. 에이전트는 기동 시 `.env` 파일을 로드하여 `VAULT_DIR` 환경 변수를 확보하거나, 현재 작업 디렉토리를 기준으로 지식 베이스의 위치를 유연하게 판단해야 합니다.
