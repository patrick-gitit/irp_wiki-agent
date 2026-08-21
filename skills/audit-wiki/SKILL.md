---
name: audit-wiki
description: Diagnose metadata, links, authority, lifecycle, and duplicate-home conditions.
intelli_repo:
  capability_id: audit-wiki
  agent: wiki-agent
  permissions: read-only
---

# Audit Wiki

Inspect the declared scope for missing frontmatter, duplicate identifiers, filename mismatch, unresolved links, stale authority, active completed notes, archive collisions, and missing provenance. Report target, observed condition, expected condition, evidence, confidence, and repair proposal. Audit does not mutate or discard content unless separately authorized.
