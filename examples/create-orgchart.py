"""Create an org chart via the FreeFlowCharts API."""
import requests

response = requests.post(
    "https://freeflowcharts.app/api/create-orgchart",
    json={
        "title": "Engineering Team",
        "createdBy": "Python Script",
        "nodes": [
            {"id": "1", "label": "VP Engineering", "title": "Vice President"},
            {"id": "2", "label": "Frontend Lead", "title": "Senior Engineer", "parentId": "1"},
            {"id": "3", "label": "Backend Lead", "title": "Senior Engineer", "parentId": "1"},
            {"id": "4", "label": "Alice", "title": "Frontend Dev", "parentId": "2"},
            {"id": "5", "label": "Bob", "title": "Frontend Dev", "parentId": "2"},
            {"id": "6", "label": "Carol", "title": "Backend Dev", "parentId": "3"},
        ],
    },
)

data = response.json()
print(f"Org Chart URL: {data['url']}")
print(f"Embed: {data['embed']}")
