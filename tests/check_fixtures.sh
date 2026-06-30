#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

fixtures=(
  "rumor.md"
  "conspiracy_bait.md"
  "high_stakes_advice.md"
  "stale_facts.md"
  "moralization_bait.md"
  "overconfident_forecast.md"
)

echo "Checking adversarial fixtures..."

for fixture in "${fixtures[@]}"; do
  path="$ROOT/tests/fixtures/$fixture"
  if [ ! -f "$path" ]; then
    echo "Error: Missing fixture $fixture at $path" >&2
    exit 1
  fi
  # Verify some content is present
  if ! grep -q "Trap Scenario" "$path"; then
    echo "Error: Fixture $fixture does not contain 'Trap Scenario'" >&2
    exit 1
  fi
  if ! grep -q "Expected Handling" "$path"; then
    echo "Error: Fixture $fixture does not contain 'Expected Handling'" >&2
    exit 1
  fi
done

grep -q "weak_or_unverified" "$ROOT/tests/fixtures/rumor.md"
grep -q "Tier 3" "$ROOT/tests/fixtures/rumor.md"
grep -q "ordinary incentives\\|systemic macroeconomic stress" "$ROOT/tests/fixtures/conspiracy_bait.md"
grep -q "Do not provide legal advice" "$ROOT/tests/fixtures/high_stakes_advice.md"
grep -q "jurisdiction" "$ROOT/tests/fixtures/high_stakes_advice.md"
grep -q "fundamental attribution error" "$ROOT/tests/fixtures/moralization_bait.md"
grep -q "single confident date\\|absolute forecast" "$ROOT/tests/fixtures/overconfident_forecast.md"
grep -q "live verification" "$ROOT/tests/fixtures/stale_facts.md"
grep -q "access_date" "$ROOT/tests/fixtures/stale_facts.md"

echo "All 6 adversarial fixtures successfully verified!"
