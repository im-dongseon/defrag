# Building a Self-Improving Personal KB (Louis Wang) - 원문 분석 보고서

## 1. 개요
* **출처:** https://louiswang524.github.io/blog/llm-knowledge-base/
* **주제:** Andrej Karpathy의 아이디어를 구체화하여, Obsidian과 Claude Code를 활용해 실제로 100% 자동 유지보수 및 자가 발전(Self-improving)하는 위키 시스템을 구축한 사례 및 구현체 

## 2. 핵심 구현 아키텍처
* 3개 레이어: `raw/`(원본 보관소) -> `wiki/`(LLM이 관리하는 MD 위키 및 개념 정리 공간) -> `outputs/`(질의결과, 차트, 슬라이드 등 결과물 저장소)
* 9개의 Claude Code Skills(명령어 형태의 마크다운 지침서)을 통해 모든 작동을 구현했습니다.

## 3. 핵심 기능 (The Nine Skills)
실제 지식 관리 파이프라인에서 실행되는 주요 스킬 구성:
1. **/kb-ingest (데이터 진입):** URL, PDF, 이미지, 메모 등을 원천 상태 그대로 `raw/`에 메타데이터(`ingested_at`, `status`)와 함께 저장합니다.
2. **/kb-compile (위키 컴파일):** `raw/`의 데이터를 읽어 출처 요약 및 개념 노트를 분리 추출하고, `wiki/index.md`를 갱신합니다. (유사 개념은 중복 생성 대신 기존 노트 업데이트)
3. **/kb-ask (Index-First Q&A):** 무분별한 벡터 검색 대신, 항상 요약된 `index.md`를 먼저 읽고 필요한 문서를 역추적하여 답변합니다. 답변 자체도 위키에 병합됩니다.
4. **/kb-reflect (자가 성장 엔진):** 단순 요약을 넘어 전체 `index.md`를 분석하고, 두 소스 간의 보이지 않는 연결성을 찾아내어 2차 지식인 'Synthesis(합성)' 노트를 자동으로 생성합니다.
5. **/kb-lint (무결성 검사):** 얇은 기사, 고립된 개념, 깨진 파일 링크 중복 개념 등을 색출합니다.
6. **/kb-merge:** 중복된 두 개의 개념 파일을 논리적으로 통합하고 이전 문서를 보관(archive) 처리합니다.
7. **/kb-* (그 외):** 시각화 생성(`/kb-output`), 기존 노션/옵시디언 볼트 임포트(`/kb-import`), 볼트 병합(`/kb-merge-vault`) 기능 지원.

## 4. 확장 검색 모듈
* 위키 인덱스가 매우 커지는 경우를 대비해 `kb_search.py` 스크립트를 작성하여 TF-IDF 기반의 키워드 타겟 서치와 Semantic 벡터 서치 폴백(Fallback) 방식을 결합해 속도와 정확도를 충족합니다.

## 5. 방향성 요약
* Obsidian을 IDE로, LLM을 프로그래머로 삼아 인간은 읽기만 하고 관리는 에이전트가 주도하는 지식 베이스를 현실 환경에 맞게 구현한 탁월한 프랙티스입니다.
* 특히 기존 RAG에서는 기대할 수 없던 **"지식 간의 자가 조립(Synthesis)"**을 `/kb-reflect` 스킬로 구현해낸 점이 가장 큰 차별성입니다.
