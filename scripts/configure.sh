#!/usr/bin/env bash
# Copies skills/ to skills.local/ and fills placeholders from a KEY=VALUE env file.
# Usage: scripts/configure.sh my-config.env
set -euo pipefail
cfg="${1:?usage: configure.sh my-config.env}"
rm -rf skills.local && cp -r skills skills.local
while IFS='=' read -r key val; do
  [[ -z "$key" || "$key" == \#* ]] && continue
  find skills.local -name SKILL.md -exec sed -i.bak "s|{{${key}}}|${val}|g" {} +
done < "$cfg"
find skills.local -name '*.bak' -delete
echo "Done. Upload each folder in skills.local/ as a Claude skill."
grep -rho '{{[A-Z_]*}}' skills.local | sort -u | sed 's/^/Still unfilled: /' || true
