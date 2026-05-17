# Changelog

All notable changes to the FreeFlowCharts API and this repository will be documented in this file.

## [1.2.0] - 2026-05-17

### Added
- **Org Chart API:** `POST /api/create-orgchart` creates hierarchical org charts with auto tree layout. Export via `/api/export-orgchart/json` and `/api/export-orgchart/svg`. Max 100 nodes, colors by depth.
- **Pie Chart API:** `POST /api/create-piechart` creates pie and donut charts with auto color assignment. Export via `/api/export-piechart/json` and `/api/export-piechart/svg`. Max 50 slices, optional donut mode.
- **Mind Map API:** `POST /api/create-mindmap` creates radial mind maps with auto layout. Export via `/api/export-mindmap/json` and `/api/export-mindmap/svg`. Max 100 nodes, colors by branch.
- **Org Chart Editor:** Free browser-based editor at `/orgchart` with templates, add/edit/delete nodes, auto-layout, and PNG/JSON export. No signup required.
- **Pie Chart Editor:** Free browser-based editor at `/piechart` with templates, donut toggle, and percentage labels. No signup required.
- **Mind Map Editor:** Free browser-based editor at `/mindmap` with templates, radial layout, and branch coloring. No signup required.
- **Shared views** for all new chart types at `/orgchart/view/:id`, `/piechart/view/:id`, `/mindmap/view/:id` with download toolbar.
- **Blog posts** for each new chart type explaining use cases, API, and editor features.
- Updated OpenAPI spec, SKILL.md, llms.txt, ai-plugin.json with all new endpoints.

### Changed
- Homepage "Free Diagram Tools" section now links to all 5 chart types.
- Sitemap expanded with new tool pages and blog posts (now 30+ indexed pages).
- Rate limiting applied consistently: 30 req/hr per IP across all endpoints.

## [1.1.0] - 2026-04-24

### Added
- **Intelligent Dagre Auto-layout:** API now automatically computes a collision-free, hierarchical tree structure for nodes when `x` and `y` coordinates are omitted.
- **7 Visual Themes:** Added support for `default`, `neon`, `pastel`, `retro`, `ocean`, `brutalist`, and `candy` themes via the `theme` field.
- **Custom Backgrounds:** Added support for setting custom hex colors or CSS `linear-gradient` strings via the `background` field or `?bg=` export parameter.
- **Contrast-Aware Exports:** SVG and PNG exports now automatically detect light backgrounds and invert text, edges, and arrows to preserve readability.
- **XSS Mitigation:** Raw HTML and script tags provided in labels are now safely escaped by the server before storage.

### Changed
- **Strict Structural Validation:** The API now immediately returns a `400 Bad Request` instead of silently accepting broken graphs when encountering:
  - Duplicate Node IDs
  - Dangling Edge References (pointing `from` or `to` non-existent nodes)
  - Missing `id` fields on nodes or missing `from`/`to` fields on edges
  - Node labels exceeding the 200 character limit
  - Missing or blank node labels
- Python example refactored to use `requests` instead of `urllib` to prevent 403 errors in strict sandboxed environments.

## [1.0.0] - 2026-04-22

### Added
- Initial public release of the FreeFlowCharts API.
- Zero-auth `POST /api/create-flowchart` endpoint.
- Support for 19 core node shapes and logic gates.
- Support for 4 export formats: JSON, Mermaid, SVG, and server-side rendered PNG.
- OpenClaw Agent Skill packaging (`freeflowcharts-api.skill`).
