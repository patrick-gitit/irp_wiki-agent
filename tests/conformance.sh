#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
while IFS= read -r path; do
    [ -f "$root/$path" ] || { printf '%s\n' "missing required wiki capability: $path" >&2; exit 1; }
done <<'EOF'
policies/WIKI-POL-001 - Governed Wiki Preservation.md
tools/wiki-contract.yaml
skills/maintain-wiki-scaffold/SKILL.md
skills/inventory-inbox/SKILL.md
skills/decompose-claims/SKILL.md
skills/classify-authority/SKILL.md
skills/route-artifacts/SKILL.md
skills/ingest-and-archive/SKILL.md
skills/audit-wiki/SKILL.md
skills/manage-plan-task-lifecycle/SKILL.md
EOF

for skill in "$root"/skills/*/SKILL.md; do
    grep -q '^name: ' "$skill" || { printf '%s\n' "missing skill name: $skill" >&2; exit 1; }
    grep -q '^description: ' "$skill" || { printf '%s\n' "missing skill description: $skill" >&2; exit 1; }
done

if grep -R -n -E '/home/|intelli-repo-design|BEGIN [A-Z ]*PRIVATE KEY' "$root"/policies "$root"/skills "$root"/tools; then
    printf '%s\n' 'private design or secret-like content found in wiki agent' >&2
    exit 1
fi

printf '%s\n' 'wiki-agent conformance: PASS'
