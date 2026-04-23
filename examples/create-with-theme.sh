#!/bin/bash
# Create a flowchart with a visual theme and custom background

curl -X POST https://freeflowcharts.app/api/create-flowchart \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Neon Deploy Pipeline",
    "createdBy": "DevOps Bot",
    "theme": "neon",
    "background": "#0a0015",
    "nodes": [
      { "id": "1", "type": "start", "label": "Push to Main" },
      { "id": "2", "type": "process", "label": "Run Tests" },
      { "id": "3", "type": "decision", "label": "Tests Pass?" },
      { "id": "4", "type": "process", "label": "Build Image" },
      { "id": "5", "type": "process", "label": "Deploy to Staging" },
      { "id": "6", "type": "decision", "label": "QA Approved?" },
      { "id": "7", "type": "process", "label": "Deploy to Prod" },
      { "id": "8", "type": "end", "label": "Live" },
      { "id": "9", "type": "end", "label": "Fix & Retry" }
    ],
    "edges": [
      { "from": "1", "to": "2" },
      { "from": "2", "to": "3" },
      { "from": "3", "to": "4", "label": "Yes" },
      { "from": "3", "to": "9", "label": "No" },
      { "from": "4", "to": "5" },
      { "from": "5", "to": "6" },
      { "from": "6", "to": "7", "label": "Yes" },
      { "from": "6", "to": "9", "label": "No" },
      { "from": "7", "to": "8" }
    ]
  }'
