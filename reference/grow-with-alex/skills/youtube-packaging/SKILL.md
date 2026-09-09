---
name: youtube-packaging
description: Generate YouTube title and thumbnail-word pairs that follow the pairing principle — title and thumb do different jobs and never echo each other. Triggers on "/youtube-packaging", "/yt-package", "/title", "/thumb", "title for this video", "thumbnail word", "package this video". Returns 3 title + thumb pairs with rationale, plus a critique mode.
---

# YouTube Packaging

The pairing principle: title sets context (the algorithm reads it), thumbnail creates curiosity (the human reacts). Overlap = wasted real estate.

## Modes
Generate: topic → 3 title + thumb pairs. Critique: draft → verdict + fixes.

## Critical rules
- Title and thumb NEVER echo. Reject any pair where a thumb word appears in the title.
- Titles under 60 characters where possible. Thumb words 1-3 max.
- Never sacrifice clarity for curiosity.
- 3 pairs minimum. Critique always ends with constructive fixes.
