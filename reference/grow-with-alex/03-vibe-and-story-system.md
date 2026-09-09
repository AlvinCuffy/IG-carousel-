# The Vibe + Story System

Source: `/Grow with Alex/The-Vibe-Story-System.pdf` (July 2026). Text extracted 2026-09-09.

Lock your look. Direct the story. Unlimited matching B-roll. Claude is the brain, Seedance 2.0 is the muscle.

## The two rules of good B-roll

1. **Consistency.** Every clip must match. Random clips that don't share a look kill the vibe. Part 1 locks this.
2. **Variety.** Same look, different shots. Wide, close, low angle, tracking, aerial. If every shot is the same, retention dies. Part 2 solves this.

## Part 1 — Lock your vibe (six levers)

| Lever | What it controls | Example values |
|---|---|---|
| Light | Direction, hardness, time of day. Changes everything before anything else. | golden hour, soft diffused morning light, hard midday sun, blue hour |
| Colour & grade | Which colours pop, which sit back. "Colourful" is not a grade — be specific. | warm Mediterranean tones, muted pastels, nostalgic summer grade |
| Film stock | The strongest single lock. A named stock forces the same grain and contrast every time. | Kodak Portra 400, CineStill 800T, Fuji Superia |
| Lens | Field of view and compression. Keeps perspective consistent. | 35mm, 50mm, wide angle, shallow depth of field |
| Movement | How the camera behaves. Handheld feels human, locked-off feels editorial. | slow handheld, gentle push-in, static tripod, tracking |
| Composition | How frames are built. | centre-framed, negative space, rule of thirds, foreground layers |

### Lock string template

```
Shot on [FILM STOCK], [LIGHT], [COLOUR & GRADE], [LENS], [MOVEMENT], [COMPOSITION].
```

Example (Amalfi Coast look): *Shot on Kodak Portra 400, golden hour light, warm Mediterranean film grade, 35mm lens, slow handheld movement, layered foreground composition.*

### The realism swap

If clips look too professional for the story, swap the film stock for a phone and keep everything else: *Shot on iPhone, golden hour light, warm Mediterranean grade, slow handheld movement, layered foreground composition.* Same vibe, suddenly believable.

## Part 2 — The Story Director

```
You are my director. I'll give you my script and my locked visual style. Break the script into beats. For every beat, give me:

1. Feeling — the emotion under the line (anticipation, stillness, joy, nostalgia)
2. Energy — low, building, or high
3. Shot type — vary these across the sequence: wide establishing, close-up, low angle, tracking, aerial, POV. Never repeat the same shot type twice in a row.
4. Video prompt — a complete, ready-to-run prompt that combines the beat, the feeling, the shot type, and my lock string word for word.

MY LOCK STRING:
[paste your lock string]

MY SCRIPT:
[paste your script]
```

The feeling matters more than you think. Your audience doesn't see prompts — they feel energy.

## Part 3 — Generate

1. Build your lock string. Once.
2. Run the Story Director on your script.
3. Generate each prompt with Seedance 2.0 through the Higgsfield MCP, inside Claude.
4. Cut the best 2–3 seconds of each clip over your A-roll.

Tips: one vibe per library, never mix lock strings across projects; put the lock string and Director prompt into a Claude Project or Skill.
