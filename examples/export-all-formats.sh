#!/bin/bash
# Export a flowchart in all available formats
# Replace YOUR_SHARE_ID with the shareId from create response

SHARE_ID="YOUR_SHARE_ID"
BASE="https://freeflowcharts.app/api/export"

# JSON (structured data)
curl "${BASE}/json?id=${SHARE_ID}" -o flow.json
echo "Saved flow.json"

# Mermaid syntax (paste into GitHub markdown, Notion, Obsidian)
curl "${BASE}/mermaid?id=${SHARE_ID}" -o flow.mmd
echo "Saved flow.mmd"

# SVG (vector image)
curl "${BASE}/svg?id=${SHARE_ID}" -o flow.svg
echo "Saved flow.svg"

# PNG (1600px wide raster)
curl "${BASE}/png?id=${SHARE_ID}" -o flow.png
echo "Saved flow.png"

# --- Overrides ---

# Export with a different theme
curl "${BASE}/png?id=${SHARE_ID}&theme=candy" -o flow-candy.png
echo "Saved flow-candy.png"

# Export with a custom background
curl "${BASE}/svg?id=${SHARE_ID}&bg=%231a1a2e" -o flow-custom-bg.svg
echo "Saved flow-custom-bg.svg"

# Export with both theme and background override
curl "${BASE}/png?id=${SHARE_ID}&theme=brutalist&bg=%23ffffff" -o flow-brutalist.png
echo "Saved flow-brutalist.png"
