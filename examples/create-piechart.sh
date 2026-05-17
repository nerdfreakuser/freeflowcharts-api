#!/bin/bash
# Create a pie chart via the FreeFlowCharts API

curl -X POST https://freeflowcharts.app/api/create-piechart \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Q1 Revenue by Product",
    "createdBy": "Shell Script",
    "slices": [
      { "label": "SaaS Platform", "value": 45 },
      { "label": "Consulting", "value": 25 },
      { "label": "Training", "value": 15 },
      { "label": "Support Contracts", "value": 10 },
      { "label": "Other", "value": 5 }
    ],
    "donut": true
  }'
