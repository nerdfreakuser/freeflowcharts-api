# Node Types

FreeFlowCharts supports 19 node types. Use the `type` field when creating nodes. Unknown types default to `process`.

| Type | Description | Color | Shape |
|------|-------------|-------|-------|
| `start` | Beginning of the flow | `#22c55e` (green) | Pill / rounded |
| `end` | End of the flow | `#ef4444` (red) | Pill / rounded |
| `process` | Action or operation | `#3b82f6` (blue) | Rectangle |
| `decision` | Yes/No branching point | `#f59e0b` (amber) | Diamond |
| `io` | Data input or output | `#8b5cf6` (purple) | Rectangle |
| `delay` | Wait or pause | `#64748b` (slate) | Rectangle |
| `subprocess` | Nested process | `#06b6d4` (cyan) | Rectangle (dashed border) |
| `task` | Assignable dev/ops task | `#06b6d4` (cyan) | Rectangle |
| `bug` | Bug or issue | `#f43f5e` (rose) | Rectangle |
| `email` | Email action | `#a855f7` (violet) | Rectangle |
| `meeting` | Meeting or sync | `#10b981` (emerald) | Rectangle |
| `approval` | Approval step | `#eab308` (yellow) | Rectangle |
| `milestone` | Key milestone | `#22c55e` (green) | Rectangle |
| `deadline` | Time-sensitive step | `#ef4444` (red) | Rectangle |
| `handoff` | Team handoff | `#f97316` (orange) | Rectangle |
| `cost` | Budget/cost node | `#14b8a6` (teal) | Rectangle |
| `note` | Sticky note | `#eab308` (yellow) | Rectangle |
| `textlabel` | Text annotation | `#94a3b8` (gray) | Borderless |
| `approvalGate` | Approval gate checkpoint | `#eab308` (yellow) | Rectangle |

## Usage

```json
{
  "nodes": [
    { "id": "1", "type": "start", "label": "Begin" },
    { "id": "2", "type": "decision", "label": "Approved?" },
    { "id": "3", "type": "process", "label": "Execute" },
    { "id": "4", "type": "end", "label": "Done" }
  ]
}
```

## Live Reference

Fetch all node types programmatically:

```bash
curl https://freeflowcharts.app/api/node-types
```
