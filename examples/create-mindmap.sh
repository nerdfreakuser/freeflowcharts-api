#!/bin/bash
# Create a mind map via the FreeFlowCharts API

curl -X POST https://freeflowcharts.app/api/create-mindmap \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Product Roadmap",
    "createdBy": "Shell Script",
    "nodes": [
      { "id": "1", "label": "Product Roadmap" },
      { "id": "2", "label": "Q1 Goals", "parentId": "1" },
      { "id": "3", "label": "Q2 Goals", "parentId": "1" },
      { "id": "4", "label": "Q3 Goals", "parentId": "1" },
      { "id": "5", "label": "Auth System", "parentId": "2" },
      { "id": "6", "label": "Dashboard", "parentId": "2" },
      { "id": "7", "label": "Mobile App", "parentId": "3" },
      { "id": "8", "label": "API v2", "parentId": "3" },
      { "id": "9", "label": "Analytics", "parentId": "4" },
      { "id": "10", "label": "Integrations", "parentId": "4" }
    ]
  }'
