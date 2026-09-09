# Golden Horseshoe Watch — Carousel Design System v2

Lead design strategist: Alex Pereira's Grow with Alex method. Every rule below traces to one of his
documents in `reference/grow-with-alex/`. The account's own positioning comes from
`reference/golden-horseshoe-watch/`. This file is the spec a skill will eventually run from.

Palette and fonts are **current defaults, not final**: Alvin is picking his own. Structure, layout,
imagery rules and tests are locked.

---

## 0. The one idea v2 adds: the place does the naming

Reference: an LA social-media agency grid (nine tiles, black-and-white photos of the skyline, palms,
the Hollywood sign, a skater; black / off-white / orange-red; one heavy condensed face plus one brush
accent word). Take the photos alone, strip every word, and you still know it's LA.

That is the layer our slides were missing. Applied to us:

- **A Mississauga post sits on Mississauga.** A Hamilton case sits on Hamilton. A stat about Ontario
  rent sits on a GO platform or a Toronto skyline from the lake. The viewer should know where they are
  before they read a word.
- **The photo is monochrome.** Black-and-white (or a charcoal duotone) is what lets a photograph obey
  Alex's Rule 01 — the image physically cannot smuggle in a fourth colour. This is why the LA grid holds
  together with a photo on six of nine tiles.
- **The raccoon is a mark, not a background.** It appears on explainer and checklist covers. The place
  imagery carries everything else, including every real-case slide.
- **Grid rhythm is designed, not accidental.** Tiles alternate photo-dark / solid-light / solid-accent
  so the profile grid passes Alex's Grid Test on purpose.

We are not copying LA's colours or fonts. We are copying the *move*.

---

## 1. The locked style — Alex's six elements (Level 2, 30-in-30 playbook)

### 1.1 Palette — three colours, each with a job (Rule 01)

| Role | Default | Used for |
|---|---|---|
| Background | Charcoal `#17140F` | Every dark tile, the photo duotone's shadow end |
| Primary | Off-white `#F2ECE0` | Headlines and body on dark tiles; the whole surface of a light tile |
| Accent | Amber `#D4A24C` | One word per headline, numerals, the rule line, the whole surface of an accent tile. Never body copy. |

Never-use: any blue, green, red or pure white. Photos are converted to monochrome so they can't
introduce one. The amber lamp glow in a photo counts as the accent — don't add a second amber element
on top of a photo that already glows.

### 1.2 Figure / subject style

- **Places, not people.** Golden Horseshoe architecture, streets, transit, water, weather. Real
  photographic depth: a blurred foreground object, a sharp subject, a soft background.
- **Faces hidden.** Silhouettes, backs of heads, hands. A tenant is a figure at a window, never a face.
- **The raccoon detective** with the horseshoe glass is the only character. Explainer / checklist /
  findings covers only. Never on a real case, never on a stat slide.
- **Objects as evidence:** an N4 taped to a door, a brass mailbox with a unit number, keys on a ledge,
  a rent cheque, an LTB envelope. Photographed like evidence, lit like a case file.

### 1.3 Typography — two fonts, two jobs (Rule 02), plus an optional accent

| Role | Default | Rule |
|---|---|---|
| Display | Anton (heavy condensed) | Headlines and numerals only. All caps. Tight leading (0.92–0.96). |
| Body | DM Sans | Eyebrow, body, captions, handle, source line. Zero personality by design. |
| Accent (optional) | Permanent Marker (brush) | At most ONE word per slide, always in amber, always a word that carries the emotion. Alex's Level 2 allows a third "accent" face; the LA grid uses exactly this move. If in doubt, skip it and set the accent word in Anton amber instead. |

Export fallbacks: Impact for Anton, Arial for DM Sans, cursive for the brush.

### 1.4 Composition logic — one layout, never rebuilt (Rule 03)

Canvas 1080 × 1350. Margins 80 px. Everything has a fixed home:

```
┌────────────────────────────────────────┐
│ EYEBROW (26px caps, 0.22em tracking)   │  y 80
│                                        │
│ HEADLINE — top zone                    │  starts y ~150
│ (display, 96–128px, max 900px wide)    │
│ amber sub-line / accent word           │
│                                        │
│            [ photo or mark zone ]      │  the place lives here, or the raccoon
│                                        │
│ @goldenhorseshoewatch     ──►  02/07   │  y 1350 − 80
└────────────────────────────────────────┘
```

- Numbered item: an oversized amber numeral (Anton, 260 px) sits top-left of the content zone, headline
  under it, body under that.
- Light and accent tiles use the exact same positions with the colours swapped (charcoal type on
  off-white, charcoal type on amber). The layout never moves; only the tile colour does.
- The photo occupies the lower 55–60% of a dark tile behind a charcoal gradient so the top zone stays
  legible at thumbnail size.

### 1.5 Anti-style — what this is never

- No colour photography. No stock-photo blue sky.
- No gradients other than the charcoal-to-transparent fade over a photo.
- No rounded cards, no left-border accent boxes, no drop shadows on type, no emoji.
- No clip-art skyline, no flat vector city. If there is no real photo, use a solid tile.
- No mascot on a real person's story. No "generic legal" imagery: gavels, scales, columns.
- No Inter, Roboto, Arial as chosen faces.

### 1.6 Signature element

Two, working together, and they never appear on the same slide:

1. **The horseshoe glass** — the raccoon detective's brass, horseshoe-shaped magnifying glass. The
   Golden Horseshoe worked into the mark. On explainer covers.
2. **The monochrome Golden Horseshoe** — a real, recognisable local place in black-and-white under the
   type. On everything else.

Test: from a thumbnail, with the text unreadable, a follower should still say "that's the Watch".

---

## 2. Signal imagery — the place library

Full library with per-city locations, objects and prompt templates: `docs/signal-imagery.md`.

Rule of thumb for choosing the place:

| Slide is about | Put it on |
|---|---|
| A Mississauga tenant or landlord | Absolute Towers, Square One's edge, Port Credit lighthouse, Hurontario LRT |
| Brampton | Gage Park gazebo, Four Corners downtown, townhouse rows, the Rose Theatre corner |
| Hamilton | The escarpment stairs, the steel-mill skyline from the Skyway, James Street North, a brick worker's cottage |
| Toronto / province-wide stat | CN Tower from Humber Bay, a GO platform at dusk, Union Station's great hall, a streetcar wire tangle |
| Bill 60 / LTB process | An N-form taped to a door, a brass mailbox, the LTB envelope, a Service Ontario counter |
| A both-sides piece | Two doors on one landing. A duplex with two lit windows. |

Treatment lock string (Alex's Vibe System, six levers):

```
Shot on CineStill 800T, single warm tungsten source, charcoal-and-amber monochrome grade,
35mm lens, static tripod, layered foreground composition.
```

For the type layer the photo is desaturated to a charcoal duotone; the amber survives only as the
light source.

---

## 3. The grid rhythm

Nine tiles read as one brand when the tile types alternate. Working pattern for a 3 × 3 block:

```
PHOTO   LIGHT   PHOTO
ACCENT  PHOTO   ACCENT
PHOTO   LIGHT   PHOTO
```

- PHOTO = charcoal duotone place photo, off-white type, one amber word.
- LIGHT = solid off-white, charcoal type, one amber word.
- ACCENT = solid amber, charcoal type, off-white or brush accent word.

Covers are what the grid shows, so the cover of each carousel is assigned a tile type when it enters
the calendar. Never post two LIGHT or two ACCENT covers in a row.

---

## 4. Slide types

| Type | Tile | Mark | Copy shape |
|---|---|---|---|
| Cover — explainer / checklist | PHOTO or ACCENT | Raccoon + glass | Eyebrow · headline with one amber word · amber sub-line |
| Cover — real case | PHOTO | None | Eyebrow · headline · "Source: LTB file" |
| Numbered item | PHOTO or dark solid | None | Numeral · headline · 2–3 line body |
| Stat / fact | LIGHT | None | Eyebrow · huge amber number · one-line meaning · source |
| Turn / both-sides | ACCENT | None | Two short lines, one per side |
| Close | PHOTO (soft) or dark solid | None | "Save this before you need it." · DM WATCH · disclaimer |

---

## 5. Tests before anything ships

Alex's pre-flight checklist plus the account's own rules:

- [ ] **Colour:** three, each with a job. The photo is monochrome.
- [ ] **Fonts:** two (plus at most one brush word).
- [ ] **Layout:** eyebrow, headline, handle, arrow and page count in their locked homes.
- [ ] **Shrink test:** legible at feed-thumbnail size.
- [ ] **Swap test:** could this belong to any other account? Then it isn't done.
- [ ] **Place test:** strip the words. Do you still know where you are?
- [ ] **Grid test:** next to the last eight covers, does it follow the rhythm?
- [ ] **Mark test:** raccoon only on explainers. Never on a real case.
- [ ] **Sourcing:** every stat is Ontario/federal; every case is Golden Horseshoe-real; legal claims
      verified against the RTA or Tribunals Ontario.

---

## 6. Where things live

- `design/` — Claude Design artboards: slide types on page "Slides", the nine-tile rhythm on page "Grid".
- `docs/signal-imagery.md` — the place library and Higgsfield prompt templates.
- `docs/higgsfield-renders.md` — every render so far, by job ID.
- `skills/ghw-carousel/SKILL.md` — the draft skill this system becomes.
- `reference/` — Alex's documents and the account's research, verbatim.
