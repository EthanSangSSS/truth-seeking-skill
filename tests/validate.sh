#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required=(
  "SKILL.md"
  "references/truth-protocol.md"
  "agents/openai.yaml"
  "templates/truth-seeking-report.md"
  "examples/fictional-platform-decline.md"
  "README.md"
  "LICENSE"
)

for file in "${required[@]}"; do
  test -f "$ROOT/$file" || {
    echo "Missing required file: $file" >&2
    exit 1
  }
done

grep -q '^---$' "$ROOT/SKILL.md"
grep -q '^name: truth-seeking$' "$ROOT/SKILL.md"
grep -q '^description: ' "$ROOT/SKILL.md"

if grep -R -nE 'deep-research-router|deep-mining-automation|reliable-signal-gathering|/Users/ethan|AI Agent Database|Feishu|Obsidian' "$ROOT" \
  --exclude-dir=.git \
  --exclude='validate.sh'; then
  echo "Private/local coupling detected." >&2
  exit 1
fi

echo "truth-seeking-skill validation passed"
