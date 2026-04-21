#!/bin/bash
# IP-clean scanner for chronodomus-public
# Scans all tracked + staged content for patterns that indicate IP leakage.
# Exits 0 if clean, 1 if any forbidden pattern matches.
# Run locally before every commit; also runs in GitHub Actions.

set -euo pipefail

# Limit scan to committed / stageable content. Exclude the scanner itself
# and CONTRIBUTING.md (which legitimately discusses forbidden patterns by name).
EXCLUDE_PATHS=(
  ':!scripts/ip_scan.sh'
  ':!CONTRIBUTING.md'
  ':!.github/workflows/ip-scan.yml'
)

# Patterns that must never appear in this public repo.
# Using -w (word boundary) where appropriate to reduce false positives.
PATTERNS=(
  # Patent filing IDs
  'CCL-(RX|DX|HX|SS|ED|FR)-[0-9]+'
  # Trade secret register IDs
  'TS-(RX|DX|HX|SS|ED|FR)-[0-9]+'
  # Specific algorithm / method names
  'discordance[_-]?matrix'
  'HIGH_SEVERITY_PTS'
  '\bSWoL\b'
  '\bEBGM\b'
  '\bBCPNN\b'
  'Youden[_-]?J'
  'MultiChannelBOCPD'
  'posture[_-]?titration'
  'OFPD[_-]?phenotype'
  '7-family cross-domain'
  'Merkle accumulator'
  'HSM key ceremony'
  'cairnsdx_engine'
  'cairnsrx_engine'
  # Internal path leaks
  'validation/trade_secret'
  'backend/services/trade_secret'
  'engine/trade_secret'
  'Everdiem/TradeSecret'
  'Ferty/TradeSecret'
  'backend/services/part2_firewall'
  'backend/services/pharmacovigilance'
  # Regulatory submission references
  '\bQ-Sub\b'
  '\b510\(k\)\b'
  'Pre-Submission'
  # Validation-metrics-as-literals patterns
  '3[,]?847.pair'
  '20,?001'
  '5,?971'
  '1[,.]064 interactions'
  # SBIR / grant specifics
  'specific aims'
  'SBIR Phase I'
  # Trade-secret keyword
  'trade[_ -]secret'
)

FAIL=0
HITS_FILE=$(mktemp)

for pattern in "${PATTERNS[@]}"; do
  if git grep -I -n -E "$pattern" -- "${EXCLUDE_PATHS[@]}" >> "$HITS_FILE" 2>/dev/null; then
    FAIL=1
  fi
done

if [ "$FAIL" -eq 1 ]; then
  echo "❌ IP-clean scan FAILED. Forbidden patterns found:"
  echo ""
  sort -u "$HITS_FILE"
  echo ""
  echo "See CONTRIBUTING.md for the IP-clean policy."
  echo "Remove these lines or explain false-positive in the commit message."
  rm "$HITS_FILE"
  exit 1
fi

rm "$HITS_FILE"
echo "✅ IP-clean scan passed. No forbidden patterns found."
exit 0
