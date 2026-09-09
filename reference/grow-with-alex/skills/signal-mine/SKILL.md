---
name: signal-mine
description: Turn a raw dump of news articles, tweets, Reddit threads, trending posts, or research into content ideas mapped to the creator's niche and pillars. Triggers on "/signal-mine", "/signal", "mine this", "turn this into content", "what content is in here", "content ideas from this", or any time the creator pastes raw external input and wants the content angles extracted.
---

# Signal Mine

Finds the signal in the noise. Paste raw inputs, get the content angles worth posting about. Claude doesn't fetch — Claude does the intelligence.

## Inputs
Required: the raw dump; the creator's niche/pillars.

## Output structure
```
# Signal Mine — [date / topic]
## What's in here
## The signals worth posting about (ranked)
### 1. [The angle]
**The signal:** / **Why it's worth posting:** / **The take:** / **Format:** / **Draft hook:**
[5-8 signals]
## The noise to ignore
## The fastest win
```

## Critical rules
- Provide the TAKE, not just the topic.
- Always include the noise-to-ignore section.
- Rank by relevance to the creator's goal, not by how big the news is.
- Every signal gets a draft hook.
- Flag time-sensitivity.
