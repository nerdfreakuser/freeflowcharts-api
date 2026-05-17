"""Create a pie chart via the FreeFlowCharts API."""
import requests

response = requests.post(
    "https://freeflowcharts.app/api/create-piechart",
    json={
        "title": "Q1 Revenue by Product",
        "createdBy": "Python Script",
        "slices": [
            {"label": "SaaS Platform", "value": 45},
            {"label": "Consulting", "value": 25},
            {"label": "Training", "value": 15},
            {"label": "Support Contracts", "value": 10},
            {"label": "Other", "value": 5},
        ],
        "donut": True,
    },
)

data = response.json()
print(f"Pie Chart URL: {data['url']}")
print(f"Embed: {data['embed']}")
