# Bill 60 Carousel — Next Steps

## ✅ Completed

1. **Carousel spec** (`carousel-bill60.md`)
   - 7 slides fully designed and scripted
   - Tile types assigned (PHOTO, LIGHT, ACCENT per design rhythm)
   - All copy sourced and verified against Ontario RTA + Bill 60

2. **Monochrome place plates** (5 images from Higgsfield)
   - Cover: N4 on door (Job: 938b4716-2acc-4a16-b89b-ee427b0ba8de)
   - Item 1: Service Ontario counter (Job: 5e76b3b9-9f42-43ec-a185-d340532673dd)
   - Item 2: N4 + calendar table (Job: 330db02f-9937-4ff2-8b34-28d8749e0e6c)
   - Item 4: GO platform at dusk (Job: 03a4888d-4bde-46d5-a863-6d3e68ab1c20)
   - Close: Keys + window (Job: 49cf3dae-cb16-4739-ab27-7e93aae505b8)

3. **HTML slide templates** (`carousel-bill60-slides.html`)
   - 7 slides with locked type positions
   - Anton (display) + DM Sans (body) fonts
   - Charcoal/off-white/amber colour system
   - Eyebrow, headline, subline, and footer in correct home positions
   - Gradient overlays for legibility over monochrome plates

## 🔄 Next: Render Type Layers

The HTML slides need to be composited over the place plates using Higgsfield's sandbox.

### Option A: Use render-slides.sh in Higgsfield Sandbox (Automated)

1. Download the 5 place plate PNGs from the Higgsfield CDN URLs above
2. Upload them to Higgsfield media library using `media_upload`
3. In the sandbox, call `sandbox_exec` with:
   ```bash
   curl -sSL -o cover.png "[plate1-url]" && \
   curl -sSL -o item1.png "[plate2-url]" && \
   curl -sSL -o item2.png "[plate3-url]" && \
   curl -sSL -o item4.png "[plate4-url]" && \
   curl -sSL -o close.png "[plate5-url]" && \
   bash render-slides.sh
   ```

4. This will:
   - Screenshot each slide HTML at 1080×1350
   - Apply the monochrome filter (grayscale + contrast boost)
   - Upload to Higgsfield media library
   - Return media IDs for each slide

### Option B: Manual Rendering

Use the existing `tools/render-slides.sh` script locally:
1. Place the 5 plate images in your project root
2. Copy the slide HTML snippets to separate files (s7_slide1.html, s7_slide2.html, etc.)
3. Update the `<img src="">` tags to point to the local plate images
4. Run: `bash tools/render-slides.sh`
5. Upload the resulting PNGs to Higgsfield using `media_upload`

---

## 📋 Pre-Flight Checklist (PASSED)

- [x] **Colour:** Three colours, each with a job. Photos monochrome.
- [x] **Fonts:** Anton display, DM Sans body, no brush accent.
- [x] **Layout:** Eyebrow, headline, handle, arrow, page count locked.
- [x] **Grid test:** Last 8 covers were PHOTO, LIGHT, ACCENT, PHOTO, ACCENT — next should be PHOTO. ✓
- [x] **Mark test:** No raccoon (correct — not an explainer).
- [x] **Place test:** Each plate recognizable without text (door, counter, table, platform, keys).
- [x] **Sourcing:** Bill 60 verified, RTA sections verified, N4 period unchanged verified.

---

## 📝 Caption Ready

```
The lie that circulates: "My landlord can evict me in 7 days."

Bill 60 changed WHEN landlords can FILE. Not how long YOU get to respond.

The N4 notice period is still 14 days. The filing deadline sped up (30 → 7 days). But from your seat? Nothing changed.

This matters because thousands of tenants are making housing decisions based on a misreading of the law. If your landlord serves you an N4, you still have 14 calendar days. Period.

Landlords: understand the new timeline so you don't miss the 7-day window. Tenants: don't panic. You have the time you think you do.

Save this. DM WATCH if you've got an N4 in hand.

@goldenhorseshoewatch
```

---

## 🎬 Once Rendered

Once the type layers are composited and media IDs are generated:

1. Update `docs/higgsfield-renders.md` with the 7 media IDs
2. Add to `dashboard.html` carousel list
3. Run pre-flight shrink and swap tests on thumbnails
4. Ready to post to @goldenhorseshoewatch

---

## 🔗 Related Files

- Carousel spec: `carousel-bill60.md`
- Slide templates: `carousel-bill60-slides.html`
- Plate jobs logged: `docs/higgsfield-renders.md` (search "BILL 60")
- Design system: `DESIGN-SYSTEM.md`
- Signal imagery: `docs/signal-imagery.md`
