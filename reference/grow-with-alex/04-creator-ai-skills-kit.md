# The Creator AI Skills Kit — Six skills

Source: `/Grow with Alex/Skills 6.docx`. Text extracted 2026-09-09.

## How to install
These aren't ChatGPT prompts. They're skills — files Claude reads automatically when you trigger them. Install once, use forever.
1. Open Claude.ai → settings → Capabilities → Skills.
2. Create a new skill. Name it as the SKILL.md says.
3. Paste the SKILL.md content into the skill body.
4. Save. Trigger with a slash phrase in any chat.

## Skill 1 — Hook Generator (`/hooks`)
```
---
name: hook-generator
description: Generate 10 hooks for a Reel, TikTok, YouTube short, or video idea. Triggers on "/hooks", "give me hooks", "hooks for this". Two modes — script mode (hooks match the script's payoff) or idea mode (hooks shape the script that follows). Do NOT ask clarifying questions — generate immediately.
---
# Hook Generator
You generate 10 hooks fast. The user is in flow — they want to pick one and ship.

## Two modes — detect automatically
Script mode: user pastes a script. Hooks must match the script's content and earn its payoff.
Idea mode: user gives a topic. Hooks generate from the idea.

## The six patterns
1. Contrarian  2. Curiosity gap  3. Pattern interrupt  4. Identity callout  5. Stat shock  6. Before / after

## Output format
10 hooks, numbered, each followed by — pattern. No top 3. No usage notes.
If script mode, add ONE line: Best fits this script's payoff: #X, #Y

## Voice rules
12 words or fewer. Hard cap at 18. No throat-clearing. No hedging. Specific over vague. Active voice. Present tense.

## Banned phrases
"You won't believe" · "This changed my life" · "Here's what nobody tells you" · "The truth about"

## Never
Never ask clarifying questions. Never write a full script. Never explain each hook in depth.
```

## Skill 2 — Beat Image Generator (`/beat-image`)
```
---
name: beat-image-generator
description: Generate on-brand still images for each visual beat of a Reel/TikTok/short script using Higgsfield GPT Image 2. Triggers on "/beat-image", "/beats", "generate visuals for this script". Output is a sequence of stills, one per beat.
---
# Beat Image Generator
## Workflow
1. Parse the script into beats. One beat = one line OR one self-contained visual moment. Most reels = 5-8 beats.
2. Classify each: hero, supporting, abstract metaphor, text-overlay.
3. Translate abstract → concrete. "Discipline" → hand writing by candlelight. Never leave abstract as abstract.
4. Inject brand DNA based on the profile the user names.
5. Build prompt: subject → lighting → environment → angle → style.
6. Call Higgsfield gpt_image_2, aspect 9:16 or 1:1.

## Brand profiles (replace with your own)
@growithalex (Japanese vintage film): 35mm film grain, soft natural light, muted earth palette of cream, olive, amber, forest, charcoal. Shallow depth of field. Wabi-sabi stillness, Kodak Portra warmth, faceless objects and hands when possible.
Modern Stoic (chiaroscuro): Cinematic still, Renaissance chiaroscuro lighting, deep shadows, classical objects, single subject in pool of warm light, surrounding darkness, film grain.

## Output format
Parse table first: | # | Line | Beat type | Visual concept |. Then generate per beat. End with: [N] beats generated.

## Rules
Default 9:16. Ask if 1:1 carousel. Always show parse table BEFORE generating. Translate abstract → concrete always. Inject brand DNA on every prompt. Default faceless unless script needs a person. No logos, no real brands, no embedded text.
```

## Skill 3 — Beat Video Generator (`/beat-video-generator`)
```
---
name: beat-video-generator
description: Generate cinematic moving video clips for each visual beat of a Reel script using Higgsfield Seedance 2.0. Triggers on "/beat-video-generator", "/beatvideo", "animate". Best when start_image is provided from a prior Beat Image run.
---
# Beat Video Generator
## Workflow
1. If stills exist from Skill 2, use them as start_image.
2. If no stills, generate them first via Beat Image Generator.
3. Build motion-only prompt for each beat (start frame defines the scene — only describe what moves).
4. Call Higgsfield seedance_2_0, duration 5s, mode std, aspect 9:16.

## Motion principles
RESTRAINED. No flashy camera moves. Match the brand mood. One primary motion per beat. Use noir genre tag for chiaroscuro/Stoic content.

## Motion prompt template
[primary motion] + [environmental detail that breathes] + [atmospheric note] + "subtle, restrained motion — no abrupt movements, no camera shake."
```

## Skill 4 — Thumbnail Style Generator (`/thumbnail-style`)
```
---
name: thumbnail-style-generator
description: Analyse the user's existing thumbnail style across 4-5 reference thumbnails, then generate new on-brand thumbnails for any video topic in that exact style. Two phases — analysis and generation. Triggers on "/thumbnail-style", "/thumbnails", "thumbnail in my style".
---
# Thumbnail Style Generator
PHASE 1 — STYLE ANALYSIS: confirm 4-5 references; analyse composition, colour palette, typography, visual motifs, expression, background. Output a style profile to confirm.
PHASE 2 — GENERATION: take the topic; build a prompt combining style profile + topic; call gpt_image_2 with the references as image inputs, 16:9, quality high, 1k.

## Style profile template
STYLE PROFILE — Composition / Palette / Typography / Motifs / Expression / Background. Confirm or adjust. Then give me a video topic.

## Generation prompt template
Generate a YouTube thumbnail (16:9) for a video titled "[TOPIC]". Style: [style profile]. Use the reference thumbnails as visual anchors — match composition, palette, typography, and visual motifs exactly. The thumbnail must look like it was made by the same designer.

## Rules
Require 4-5 references minimum. Always show the style profile BEFORE generating. Always pass references as image inputs. AI text rendering still drifts ~10-20%; recommend Canva magic layers for final text polish.
```

## Skill 5 — Face Lock (`/facelock`)
```
---
name: face-lock
description: Preserve the user's face across AI image generation. Works standalone OR as a modifier for beat-image-generator, beat-video-generator, or thumbnail-style. Triggers on "/facelock", "keep my face", "preserve identity". Requires a reference photo.
---
# Face Lock
## Identity preservation language to inject
"Preserve the subject's exact facial features, expression structure, and identity from the reference image. Do not alter age, face shape, eyes, nose, or distinguishing features. Only modify [the requested change]."

## Higgsfield call structure
model: gpt_image_2 · medias: [{ value: <reference_photo_id>, role: image }] · prompt: [original prompt] + [preservation language]

## Rules
Reference photo MUST be uploaded. Best reference: clear front-facing, neutral, well-lit. For video, pass reference as start_image. Don't promise perfect preservation — GPT Image 2 drifts ~10-20%. Soul 2 is more reliable but requires training.
```

## Skill 6 — IG Caption + Funnel (`/ig-captions`)
```
---
name: ig-captions
description: Write Instagram captions in the user's voice with ManyChat keyword CTAs baked in. Triggers on "/ig-captions", "caption for this post", "write caption". The caption IS the lead gen mechanism, not decoration.
---
# IG Captions + Funnel
## Workflow
1. Identify the voice profile. 2. Identify the post topic. 3. Identify the ManyChat keyword. 4. Write caption with keyword CTA at the end.

## Caption structure
Line 1: hook (validates a feeling or makes a sharp claim). Lines 2-4: body. Lines 5-6: bridge to CTA. Final line: "Comment [KEYWORD] and I'll send it to you." Under 150 words.

## Rules
Always include the keyword CTA. Match the voice profile exactly. Keyword in ALL CAPS.
```

Example output (voice @growithalex, keyword SYSTEMS): *You can work 60 hours a week and still build nothing. Shallow work feels like progress… Pick the rock. Not the wave. Comment SYSTEMS and I'll send you the framework I use to run my entire content operation in under 20 hours a week.*

## Build your own — the 3-test framework
A task should become a skill when it passes all three:
1. **Recurring** — you do it more than once a week.
2. **Structured** — same input shape, same output shape, every time.
3. **Delegatable** — you'd hand it off if quality stayed.

Passes all 3 → build a skill. Passes 1 or 2 → keep it as a prompt.

### Mistakes that kill skills
1. Vague descriptions — skill won't fire when needed.
2. Asking for confirmation — kills the speed advantage.
3. Trying to do too much — one skill, one job.
