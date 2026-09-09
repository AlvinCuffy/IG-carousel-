#!/usr/bin/env bash
# Composite the type layer over Higgsfield place plates, in the Higgsfield sandbox.
#
# Why the sandbox: this repo's cloud session cannot download images (network policy),
# but the Higgsfield sandbox (mcp sandbox_exec) has internet, ImageMagick and Chromium.
# Flow: curl the plates in -> write s.css + one HTML per slide -> headless Chromium
# screenshot at 1080x1350 -> PUT each PNG to a media_upload presigned URL -> media_confirm.
#
# Usage inside sandbox_exec (chain in one command; the sandbox is discarded ~10s after a call):
#   curl -sSL -o cover.png "<plate url>" && bash render-slides.sh
set -euo pipefail
C=/ms-playwright/chromium-1228/chrome-linux64/chrome   # path found in the sandbox on 2026-09-09
for f in s*.html; do
  out="${f%.html}.png"
  "$C" --headless=new --no-sandbox --disable-gpu --hide-scrollbars \
       --window-size=1080,1350 --virtual-time-budget=10000 \
       --screenshot="$out" "file:///home/user/$f" >/dev/null 2>&1
  identify "$out"
done
# The slide HTML mirrors design/*.dc.html: same classes, same positions, plus
#   <img src="plate.png"> full-bleed with filter: grayscale(.4) contrast(1.05) brightness(.92)
#   and a charcoal gradient over the top zone so the headline stays legible.
