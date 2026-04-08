#!/bin/bash

# ==============================================================================
# defrag Vault Deployment Script (deploy_to_vault.sh)
# 레포지토리의 시스템 설정을 옵시디언 볼트로 배포하며, 심볼릭 링크 구조를 생성합니다.
# 
# Usage: ./deploy_to_vault.sh [options]
# Options:
#   -n, --dry-run    실제 파일을 복사하지 않고 수행될 작업만 출력합니다.
# ==============================================================================

# 옵션 처리
DRY_RUN=false
for arg in "$@"; do
    case $arg in
        -n|--dry-run)
            DRY_RUN=true
            shift
            ;;
    esac
done

# 설정 로드: .env 파일에서 VAULT_DIR을 가져옵니다.
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$REPO_DIR/.env"

if [ -f "$ENV_FILE" ]; then
    source "$ENV_FILE"
else
    echo "오류: .env 파일을 찾을 수 없습니다. 레포지토리 루트에 .env 파일을 생성하고 VAULT_DIR을 설정하세요."
    exit 1
fi

if [ -z "$VAULT_DIR" ]; then
    echo "오류: .env 파일에 VAULT_DIR이 설정되어 있지 않습니다."
    exit 1
fi

if [ "$DRY_RUN" = true ]; then
    echo "!!! DRY-RUN MODE: 실제 변경 사항이 적용되지 않습니다 !!!"
fi

echo ">>> 옵시디언 볼트로 배포를 시작합니다..."
echo "--- 레포지토리: $REPO_DIR"
echo "--- 대상 볼트: $VAULT_DIR"

# 실행 함수 (Dry-run 대응)
run_cmd() {
    if [ "$DRY_RUN" = true ]; then
        echo "[Dry-run] $@"
    else
        eval "$@"
    fi
}

# 1. 대상 디렉토리 존재 확인
if [ ! -d "$VAULT_DIR" ]; then
    echo "오류: 대상 볼트 디렉토리를 찾을 수 없습니다: $VAULT_DIR"
    exit 1
fi

# 2. 볼트 내 _system 구조 준비
run_cmd mkdir -p "$VAULT_DIR/_system"

# 3. AGENTS.md 배포 및 링크 설정
# 3-1. 원본을 _system/으로 복사
run_cmd cp "$REPO_DIR/_system/AGENTS.md" "$VAULT_DIR/_system/AGENTS.md"
# 3-2. 볼트 루트에 심볼릭 링크 생성
run_cmd "cd \"$VAULT_DIR\" && rm -f AGENTS.md && ln -s _system/AGENTS.md AGENTS.md"
echo "--- AGENTS.md 배포 및 심볼릭 링크 설정 완료"

# 4. 최신 Rules 배포
# 4-1. 최신 룰 버전 결정 (링크가 없으면 AGENTS.md에서 추출)
LATEST_RULES_DIR=$(readlink "$REPO_DIR/_system/rules" 2>/dev/null)
if [ -z "$LATEST_RULES_DIR" ]; then
    LATEST_RULES_DIR=$(grep "최신 버전:" "$REPO_DIR/_system/AGENTS.md" | sed -E 's/.*_system\/(rules_v[^/]+)\/.*/\1/')
fi

if [ -z "$LATEST_RULES_DIR" ]; then
    echo "오류: 최신 룰 버전을 확인할 수 없습니다."
    exit 1
fi

# 4-2. 룰 디렉토리 복사
run_cmd mkdir -p "$VAULT_DIR/_system/$LATEST_RULES_DIR"
run_cmd cp "$REPO_DIR/_system/$LATEST_RULES_DIR"/*.md "$VAULT_DIR/_system/$LATEST_RULES_DIR/"
echo "--- 최신 룰 ($LATEST_RULES_DIR) 복사 완료"

# 4-3. 볼트 내 rules 심볼릭 링크 설정
run_cmd "cd \"$VAULT_DIR/_system\" && rm -f rules && ln -s $LATEST_RULES_DIR rules"
echo "--- 볼트 내 rules 심볼릭 링크 설정 완료"

# 4-4. 이전 룰 디렉토리 정리 (Cleanup)
# 현재 활성화된 버전을 제외한 모든 rules_v* 디렉토리를 삭제합니다.
echo "--- 이전 룰 디렉토리 정리 시도..."
run_cmd "find \"$VAULT_DIR/_system\" -maxdepth 1 -type d -name \"rules_v*\" ! -name \"$LATEST_RULES_DIR\" -exec rm -rf {} +"
echo "--- 이전 룰 정리 완료"

# 5. Skills 배포
if [ -d "$REPO_DIR/_system/skills" ]; then
    run_cmd cp -R "$REPO_DIR/_system/skills" "$VAULT_DIR/_system/"
    echo "--- Skills 배포 완료"
else
    echo "경고: 레포지토리에 skills 디렉토리가 존재하지 않습니다."
fi

if [ "$DRY_RUN" = true ]; then
    echo ">>> Dry-run 완료. 실제 배포를 원하시면 옵션 없이 실행하세요."
else
    echo ">>> 모든 배포 작업이 성공적으로 완료되었습니다."
fi
