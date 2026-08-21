---
name: maintain-wiki-scaffold
description: Validate and safely repair the generic repository wiki scaffold.
intelli_repo:
  capability_id: maintain-wiki-scaffold
  agent: wiki-agent
  permissions: wiki-path-editing-when-authorized
---

# Maintain Wiki Scaffold

Validate required register and capability directories after canonical-path and symlink checks. Report `present`, `missing`, `wrong-type`, `symlinked`, or `unverifiable`. Create only missing directories after approval; add a nonsemantic marker only when necessary and absent. Never replace an existing file, directory, marker, or user byte. Record every created path so recovery can remove only unchanged empty paths it created.
