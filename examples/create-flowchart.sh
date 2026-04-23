#!/bin/bash
# Create a basic flowchart via the FreeFlowCharts API

curl -X POST https://freeflowcharts.app/api/create-flowchart \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Simple Workflow",
    "description": "A basic start-to-end flow",
    "createdBy": "API Example",
    "nodes": [
      { "id": "1", "type": "start", "label": "Start" },
      { "id": "2", "type": "process", "label": "Process Data" },
      { "id": "3", "type": "decision", "label": "Valid?" },
      { "id": "4", "type": "process", "label": "Save Results" },
      { "id": "5", "type": "end", "label": "Done" }
    ],
    "edges": [
      { "from": "1", "to": "2" },
      { "from": "2", "to": "3" },
      { "from": "3", "to": "4", "label": "Yes" },
      { "from": "3", "to": "2", "label": "No" },
      { "from": "4", "to": "5" }
    ]
  }'
