---
name: inventory-inbox
description: Create a complete, stable inventory of inbox sources before processing.
intelli_repo:
  capability_id: inventory-inbox
  agent: wiki-agent
  permissions: read-only-until-inventory-recording-is-authorized
---

# Inventory Inbox

Enumerate every scoped source, record path, type, observed revision or digest, and intentional exclusion. Assign stable source identity before extraction. Do not silently skip unreadable, duplicate, or unsupported material; report it as a condition requiring disposition. Inventory is a baseline for later reconciliation, not proof of ingestion.
