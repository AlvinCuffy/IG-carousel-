---
name: ghw-carousel
description: Build an on-system Instagram carousel for @goldenhorseshoewatch — cover, numbered items, stat, turn, real-case and close slides — using the Golden Horseshoe Watch design system (three colours, two fonts, one locked layout, monochrome place imagery, raccoon mark on explainers only). Triggers on "/ghw-carousel", "/watch-carousel", "build the carousel for", "next carousel", "slides for [idea bank item]", "make the [city] carousel", or any time Alvin asks for Golden Horseshoe Watch slides, covers, or a carousel from the idea bank. Runs the pre-flight tests before handing anything over.
---

# GHW Carousel

DRAFT — becomes live once the palette and fonts are confirmed in `DESIGN-SYSTEM.md`.

Turns one idea-bank item into a finished, on-system carousel: copy per slide, tile type per slide,
place image per slide, Higgsfield prompts, and the type layer laid into the locked template.

## When to run this
- An idea-bank item is next in the posting order
- A reel performed and needs its carousel version
- An A-Z entry needs the slower breakdown

## Inputs
Required: the idea-bank item (or a headline + the city it concerns).
Reads: `DESIGN-SYSTEM.md`, `docs/signal-imagery.md`, `reference/golden-horseshoe-watch/*`,
`design/*.dc.html` (the templates), `docs/higgsfield-renders.md` (what already exists).

## Output structure
```
# Carousel — [headline]
Tile type for the cover: PHOTO / LIGHT / ACCENT   (check the last 8 covers for rhythm)
Place: [city + location from the library]   Mark: yes/no

| # | Slide type | Tile | Headline | Body | Amber word | Image |
|---|---|---|---|---|---|---|

## Higgsfield prompts (one per image, lock string included)
## Type layer (which template file each slide uses)
## Caption (Watchdog opens, Neighbor closes; ends with DM WATCH)
## Sourcing status: each legal claim → source or NEEDS VERIFICATION
## Pre-flight: colour · fonts · layout · shrink · swap · place · grid · mark · sourcing
```

## Process
1. Read the idea-bank entry. Decide the city. Pick the place from the library.
2. Decide cover tile type from grid rhythm (never two LIGHT or two ACCENT in a row).
3. Write copy: climax-led cover, items in numeral form, one amber word per headline.
4. Assign every slide a template (`Main`, `Item`, `Stat`, `Turn`, `Story`, `Close`).
5. Write the Higgsfield prompts: place plates with no text; raccoon cover from the character base.
6. Generate as a batch. Log job IDs to `docs/higgsfield-renders.md`.
7. Lay the type layer over each plate in the locked positions.
8. Run pre-flight. Anything failing goes back, not out.

## Critical rules
- Three colours. The photo is monochrome. If a render comes back in colour, regrade or reject.
- Two fonts. One optional brush word per slide, amber, never more.
- The layout does not move. Ever.
- Raccoon on explainer/checklist covers only. Never on a real case. Never on a stat.
- The place names the post. If the slide could be anywhere, pick a better place.
- Every stat is Ontario/federal. Every case is Golden Horseshoe-real. Unverified claims ship as
  NEEDS VERIFICATION, never as fact.
- Never generate a slide without checking `docs/higgsfield-renders.md` first — reuse before rerender.
- Hand over the table before generating so the sequence can be corrected cheaply.
