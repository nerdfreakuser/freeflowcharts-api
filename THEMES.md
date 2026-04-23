# Themes

FreeFlowCharts supports 7 visual themes that change the entire look of exported flowcharts — background, node styles, edge styles, fonts, and shadows.

## Available Themes

| Theme | Background | Style | Font |
|-------|-----------|-------|------|
| `default` | Dark (`#06040d`) | Low-opacity fills, thin borders, subtle glow | Inter / system |
| `neon` | Black (`#000000`) | Bright neon borders, glow shadows, magenta dashed edges | Inter / system |
| `pastel` | Cream (`#faf7f2`) | Soft muted fills, no borders, earth-tone edges | Inter / system |
| `retro` | Dark amber gradient | Dotted borders, gold edges, warm tones | Georgia / serif |
| `ocean` | Deep blue gradient | Glass-like low-opacity fills, thin dashed edges | Inter / system |
| `brutalist` | White (`#ffffff`) | Solid black fills, sharp 0-radius corners, thick black edges, white text | Courier New / monospace |
| `candy` | Deep indigo (`#441bda`) | Bright saturated fills, thick white edges, rounded pills, white text | Inter / system |

## How to Use

### At creation time

Include `"theme"` in your request body:

```json
{
  "title": "My Neon Flow",
  "theme": "neon",
  "nodes": [...],
  "edges": [...]
}
```

### At export time (override)

Pass `?theme=` as a query parameter on any export endpoint:

```bash
# Export with neon theme regardless of stored theme
curl "https://freeflowcharts.app/api/export/png?id=YOUR_ID&theme=neon" -o neon.png

# Export with candy theme
curl "https://freeflowcharts.app/api/export/svg?id=YOUR_ID&theme=candy" -o candy.svg
```

### Combining with background

You can set both a theme and a custom background. The custom background overrides only the theme's background color — all other theme styles (nodes, edges, fonts) still apply:

```json
{
  "title": "Custom",
  "theme": "neon",
  "background": "#1a0a2e",
  "nodes": [...],
  "edges": [...]
}
```

Or at export time:

```bash
curl "https://freeflowcharts.app/api/export/png?id=YOUR_ID&theme=neon&bg=%231a0a2e" -o custom.png
```

## Priority

```
?theme= query param  >  stored theme field  >  "default"
?bg= query param     >  stored background   >  theme background  >  #06040d
```

## Theme Previews

All previews use the same "Deploy Pipeline" flowchart exported via the API with `?theme=`.

### Default
The standard dark theme. Nodes have low-opacity colored fills with thin colored borders. Edges are subtle white lines. Clean and professional.

![Default theme](examples/theme-previews/default.png)

### Neon
Cyberpunk-inspired. Black background with bright neon node borders that glow. Edges are magenta and dashed. Nodes have minimal fill with strong border presence.

![Neon theme](examples/theme-previews/neon.png)

### Pastel
Soft and friendly. Cream background with muted pastel node fills (no borders). Edges are thin and earth-toned. Dark brown text for readability.

![Pastel theme](examples/theme-previews/pastel.png)

### Retro
Warm and vintage. Dark amber gradient background with dotted/double borders, gold-toned edges, and serif font (Georgia). Feels like a vintage technical diagram.

![Retro theme](examples/theme-previews/retro.png)

### Ocean
Deep and calm. Dark blue gradient background with glass-like semi-transparent nodes. Edges are thin, dashed, and light. Subtle and elegant.

![Ocean theme](examples/theme-previews/ocean.png)

### Brutalist
Bold and stark. White background with solid black node fills, sharp square corners (0 border radius), thick black edges, white text, and monospace font. Maximum contrast.

![Brutalist theme](examples/theme-previews/brutalist.png)

### Candy
Playful and vibrant. Deep indigo (`#441bda`) background with bright, fully saturated node fills. Thick white edges, large rounded corners, white text. Fun and colorful.

![Candy theme](examples/theme-previews/candy.png)
