"""
Create a flowchart using the FreeFlowCharts API (Python).
No API key required.

Requires the `requests` library:
pip install requests
"""

import requests

API_URL = "https://freeflowcharts.app/api/create-flowchart"

payload = {
    "title": "User Signup Flow",
    "description": "Registration process with email verification",
    "createdBy": "Python Script",
    "theme": "ocean",
    "nodes": [
        {"id": "1", "type": "start", "label": "User visits signup page"},
        {"id": "2", "type": "io", "label": "Enter email & password"},
        {"id": "3", "type": "process", "label": "Validate input"},
        {"id": "4", "type": "decision", "label": "Valid?"},
        {"id": "5", "type": "process", "label": "Create account"},
        {"id": "6", "type": "email", "label": "Send verification email"},
        {"id": "7", "type": "decision", "label": "Email confirmed?"},
        {"id": "8", "type": "process", "label": "Activate account"},
        {"id": "9", "type": "end", "label": "Welcome!"},
        {"id": "10", "type": "end", "label": "Show error"},
    ],
    "edges": [
        {"from": "1", "to": "2"},
        {"from": "2", "to": "3"},
        {"from": "3", "to": "4"},
        {"from": "4", "to": "5", "label": "Yes"},
        {"from": "4", "to": "10", "label": "No"},
        {"from": "5", "to": "6"},
        {"from": "6", "to": "7"},
        {"from": "7", "to": "8", "label": "Yes"},
        {"from": "7", "to": "10", "label": "No"},
        {"from": "8", "to": "9"},
    ],
}

print("Sending POST request to create flowchart...")
resp = requests.post(API_URL, json=payload)
resp.raise_for_status()

result = resp.json()

print(f"Flowchart created!")
print(f"  View: {result['url']}")
print(f"  Share ID: {result['shareId']}")
print(f"  Embed: {result['embed']}")

# Export as PNG
share_id = result["shareId"]
png_url = f"https://freeflowcharts.app/api/export/png?id={share_id}"
print(f"Downloading PNG export from {png_url}...")

png_resp = requests.get(png_url)
png_resp.raise_for_status()

with open("flowchart.png", "wb") as f:
    f.write(png_resp.content)
    
print(f"  Saved: flowchart.png")
