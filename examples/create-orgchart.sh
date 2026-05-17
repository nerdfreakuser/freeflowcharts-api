#!/bin/bash
# Create an org chart via the FreeFlowCharts API

curl -X POST https://freeflowcharts.app/api/create-orgchart \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Engineering Team",
    "createdBy": "Shell Script",
    "nodes": [
      { "id": "1", "label": "VP Engineering", "title": "Vice President" },
      { "id": "2", "label": "Frontend Lead", "title": "Senior Engineer", "parentId": "1" },
      { "id": "3", "label": "Backend Lead", "title": "Senior Engineer", "parentId": "1" },
      { "id": "4", "label": "Alice", "title": "Frontend Dev", "parentId": "2" },
      { "id": "5", "label": "Bob", "title": "Frontend Dev", "parentId": "2" },
      { "id": "6", "label": "Carol", "title": "Backend Dev", "parentId": "3" },
      { "id": "7", "label": "Dave", "title": "Backend Dev", "parentId": "3" }
    ]
  }'
