# defrag: Intelligent Knowledge Management System

`defrag`는 개인 지식 베이스(CMDS)를 관리하고 지식을 증식시키는 전문 에이전트 기반 지식 관리 시스템입니다. Johnny.Decimal 체계와 PARA 방법론을 결합하여 지식의 '복리 효과'와 '토큰 최적화'를 극대화합니다.

---

## 1. 초기 설정 (Setup)

### 1-1. 저장소 클론 및 환경 설정
저장소를 클론한 후, 루트 디렉토리에 `.env` 파일을 생성하여 본인의 옵시디언 볼트 경로를 설정합니다.

```bash
# .env 파일 예시
VAULT_DIR="/Users/yourname/Documents/my-vault"
```

### 1-2. 볼트 배포 (Deployment)
레포지토리의 최신 규칙(Rules)과 에이전트 설정(AGENTS.md), 스킬(Skills)을 실제 옵시디언 볼트로 배포합니다.

```bash
# 배포 스크립트 실행
chmod +x _system/deploy_to_vault.sh
./_system/deploy_to_vault.sh
```

---

## 2. 주요 워크플로우 (Workflows)

### 2-1. 신규 파일 수집 및 분류 (Ingest)
신규 파일(텍스트, 이미지, PDF 등)을 `00_Inbox` 폴더에 넣으면 에이전트가 자동으로 처리합니다.

- **실행 방법:** 에이전트에게 "인박스 처리해줘" 또는 `/defrag:nfp` 명령을 내립니다.
- **동작:** 
    1. 유사도 비교를 통해 기존 노트와 통합하거나 신규 노트를 생성합니다.
    2. Johnny.Decimal 규칙에 따라 적절한 분류 번호와 주제 폴더에 배치합니다.
    3. 바이너리 파일은 `91_Raw_Archive`로 아카이빙하고 Sidecar 노트를 생성합니다.

### 2-2. 지식 탐색 및 검색 (Search)
`defrag`는 비용 효율적인 **3단계 탐색 프로토콜**을 사용합니다.

1. **1단계 (인덱스 스캔):** 도메인별 `index.md`를 먼저 확인합니다.
2. **2단계 (경로 탐색):** 폴더 구조와 파일명 위주로 스캔합니다.
3. **3단계 (전역 검색):** 위 단계로 찾지 못할 경우에만 본문 검색(`grep`)을 수행합니다.

### 2-3. 능동적 지식 합성 (Synthesis)
에이전트는 기존 파편화된 지식들을 결합하여 새로운 인사이트를 담은 `type: synthesis` 노트를 `82_Synthesis` 폴더에 생성합니다.

---

## 3. 에이전트 스킬 (Agent Skills)

`_system/skills/` 디렉토리에는 에이전트의 능력을 확장하는 전문 스킬들이 포함되어 있습니다.

- **new-file-processor (nfp):** 인박스 파일의 자동 분류 및 표준화.
- **search:** 에이전트가 내부적으로 지식을 탐색할 때 사용하는 3단계 검색 프로토콜 스킬.
- **defrag-search:** 텔레그램(Hermes) 등 외부 인터페이스에서 지식 베이스를 검색하기 위한 전용 스킬.

---

## 4. 외부 연동: Hermes (Telegram Search)

[Hermes](https://github.com/your-hermes-repo)를 이용하면 텔레그램에서 옵시디언 볼트의 지식을 실시간으로 검색할 수 있습니다. 이 기능은 `defrag-search` 스킬을 기반으로 작동합니다.

### 4-1. 텔레그램 봇 설정
1. Telegram BotFather를 통해 봇 토큰을 발급받습니다.
2. Hermes 설정 파일에 볼트 경로와 봇 토큰을 등록합니다.

### 4-2. 검색 명령어
- `/search [키워드]`: `defrag-search` 스킬을 사용하여 볼트 내 지식을 3단계 프로토콜로 찾아 요약해줍니다.
- `/ask [질문]`: 볼트의 지식을 기반으로 에이전트가 답변을 생성합니다.

---

## 5. 유지보수 및 규칙 업데이트

### 5-1. 규칙 버전 관리
시스템의 모든 규칙은 `_system/rules_v*` 디렉토리에서 버전별로 관리됩니다. `AGENTS.md`는 항상 최신 버전의 규칙을 가리키도록 설계되어 있습니다.

### 5-2. 정기 점검 (Lint)
에이전트는 주기적으로(7일 이상 경과 시) 또는 강제로 실행될 때 볼트의 정합성을 점검합니다.
- 고립된 노트(Orphan) 탐지
- 비표준 태그 변환
- `unsorted` 파일 재배치 시도

---

## 6. Johnny.Decimal 명칭 규칙 (중요)

일관된 검색과 정렬을 위해 다음 명칭 규칙을 엄격히 준수합니다.

- **카테고리 폴더:** `[번호]_[이름]` (예: `10_Admin`, `20_Backend`)
- **세부 주제 폴더:** **번호 없이** 이름만 사용 (예: `Network`, `가이드`)
  - **올바른 경로:** `10_Admin/Network/`
  - **잘못된 경로:** `10_Admin/10_Network/` (중복 번호 금지)

---

## 7. 영감 및 참고 자료 (Inspiration & References)

`defrag`는 다음 프로젝트와 아이디어들에서 깊은 영감을 받아 구축되었습니다.

- **[Andrej Karpathy's LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f):** LLM이 주도하여 영구적이고 누적되는 형태의 구조적 위키를 구축하는 패턴.
- **[Louis Wang's Self-Improving Personal KB](https://louiswang524.github.io/blog/llm-knowledge-base/):** Karpathy의 아이디어를 구체화하여 Obsidian과 에이전트 스킬을 결합한 실제 구현 사례.

상세한 분석 내용은 `_system/reference/` 디렉토리의 문서들을 참고하십시오.

---

Developed by **defrag Team**. 지식의 복리 효과를 경험하세요.
