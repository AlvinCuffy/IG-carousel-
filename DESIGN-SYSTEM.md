# Golden Horseshoe Watch — Carousel Design System

The Grow with Alex carousel method (three colours, two fonts, one layout) applied to
@goldenhorseshoewatch. Source: `steal-my-carousel-system-FREEBIE.docx` (Alex Pereira,
June 2026) plus the account's own brand decisions. Paste the block below into any
image or design prompt as the starting spec.

```
DESIGN SYSTEM — Grow with Alex Carousel Method
(applied to Golden Horseshoe Watch brand)

FORMAT: 1080 x 1350 (4:5). 80px margins on every side.

COLORS (exactly 3, each with a job):
- Background: charcoal near-black (#17140F)
- Primary text: off-white (#F2ECE0)
- Accent (sparing use only): amber gold (#D4A24C)

TYPOGRAPHY (exactly 2 fonts):
- Display: Anton (heavy condensed) — headlines and numerals only. Export fallback: Impact.
- Body: DM Sans — small text, captions, eyebrow, handle. Export fallback: Arial.

LAYOUT (fixed, identical every slide):
- Eyebrow "GOLDEN HORSESHOE WATCH": small letter-spaced caps, top
- Headline: top zone, directly under the eyebrow
- Amber sub-line (covers only): under the headline
- Handle (@goldenhorseshoewatch): small, bottom-left corner
- Swipe arrow: small stroke arrow, bottom-right corner
- Numbered items: large amber numeral (Anton), top-left of the content zone,
  headline and body beneath it

BRAND MARK:
- Raccoon detective character + horseshoe-shaped brass magnifying glass
- Explainer / findings / checklist covers ONLY — never on real-case or story slides
- Story slides carry a single 120x6 amber rule in place of the mark

TESTS BEFORE SHIPPING ANY SLIDE:
- Shrink test: still legible at feed-thumbnail size?
- Swap test: could this belong to any other account? If yes, it is not done.
- Grid test: still on-brand next to the last eight posts?
- Sourcing: every stat and story is Ontario / GTA real; legal claims verified
  against the RTA or Tribunals Ontario before posting.
```

## Alex's three rules, and the traps they close

| Rule | The trap | The fix | The check |
|---|---|---|---|
| Colour | The background photo smuggles in extra colours | Three colours, each with a role: background, primary, accent | Count the colours on the cover. More than three, cut. |
| Fonts | A body font with personality | One heavy display face, one invisible sans | Cover the headline. If the body still pulls your eye, it is too loud. |
| Layout | Rebuilding the layout every post | One sketch, locked positions for headline, body, handle, arrow | Open the last three covers side by side. Same positions? |

## Where the pieces live

- `design/` — the locked slide templates as Claude Design artboards
  (`Main` cover, `Item` numbered slide, `Story` real-case slide, `Close` CTA) and
  `canvas.json` with the system rules as sticky notes. Re-seed from these files;
  never hand-edit the published canvas.
- `docs/higgsfield-renders.md` — every Higgsfield cover rendered so far, by job ID,
  so batches can be re-pulled without regenerating.
- Dropbox `/Grow with Alex/The Golden Horseshoe Watch/` — idea bank, competitor
  report, vidIQ brief, mood board images.
- Higgsfield reference element `golden-horseshoe-glass`
  (`b575e5ae-2927-41ec-a9d5-b70d73db096d`) — the signature prop. Embed it as
  `<<<b575e5ae-2927-41ec-a9d5-b70d73db096d>>>` in any prompt that needs the glass.

## Production flow

1. Pick the next piece from the idea bank posting order.
2. Write the slide copy against the templates in `design/`. Run the sourcing pass.
3. Render the cover art in Higgsfield with the raccoon base image
   (`2e174c21-0ab2-43e0-87d6-685e3166e2b5`) as the reference so the character stays
   consistent. Charcoal shadow, amber lamp glow, nothing else.
4. Lay the type layer over the art in the locked positions. Two fonts, three colours.
5. Shrink test, swap test, grid test. Then schedule.
