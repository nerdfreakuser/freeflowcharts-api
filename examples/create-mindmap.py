"""Create a mind map via the FreeFlowCharts API."""
import requests

response = requests.post(
    "https://freeflowcharts.app/api/create-mindmap",
    json={
        "title": "Product Roadmap",
        "createdBy": "Python Script",
        "nodes": [
            {"id": "1", "label": "Product Roadmap"},
            {"id": "2", "label": "Q1 Goals", "parentId": "1"},
            {"id": "3", "label": "Q2 Goals", "parentId": "1"},
            {"id": "4", "label": "Q3 Goals", "parentId": "1"},
            {"id": "5", "label": "Auth System", "parentId": "2"},
            {"id": "6", "label": "Dashboard", "parentId": "2"},
            {"id": "7", "label": "Mobile App", "parentId": "3"},
            {"id": "8", "label": "API v2", "parentId": "3"},
            {"id": "9", "label": "Analytics", "parentId": "4"},
            {"id": "10", "label": "Integrations", "parentId": "4"},
        ],
    },
)

data = response.json()
print(f"Mind Map URL: {data['url']}")
print(f"Embed: {data['embed']}")
