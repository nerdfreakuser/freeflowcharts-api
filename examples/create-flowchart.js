/**
 * Create a flowchart using the FreeFlowCharts API (Node.js).
 * No API key required. Uses native fetch (Node 18+).
 */

const API_URL = "https://freeflowcharts.app/api/create-flowchart";

async function createFlowchart() {
  const response = await fetch(API_URL, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      title: "Bug Triage Flow",
      description: "From bug report to resolution",
      createdBy: "Node.js Script",
      theme: "retro",
      nodes: [
        { id: "1", type: "start", label: "Bug Reported" },
        { id: "2", type: "bug", label: "Investigate" },
        { id: "3", type: "decision", label: "Reproducible?" },
        { id: "4", type: "process", label: "Write Fix" },
        { id: "5", type: "process", label: "Code Review" },
        { id: "6", type: "decision", label: "Tests Pass?" },
        { id: "7", type: "process", label: "Deploy" },
        { id: "8", type: "end", label: "Resolved" },
        { id: "9", type: "end", label: "Closed (Cannot Repro)" },
      ],
      edges: [
        { from: "1", to: "2" },
        { from: "2", to: "3" },
        { from: "3", to: "4", label: "Yes" },
        { from: "3", to: "9", label: "No" },
        { from: "4", to: "5" },
        { from: "5", to: "6" },
        { from: "6", to: "7", label: "Yes" },
        { from: "6", to: "4", label: "No" },
        { from: "7", to: "8" },
      ],
    }),
  });

  const result = await response.json();

  if (!result.success) {
    console.error("Error:", result.error);
    return;
  }

  console.log("Flowchart created!");
  console.log(`  View: ${result.url}`);
  console.log(`  Share ID: ${result.shareId}`);
  console.log(`  Embed: ${result.embed}`);

  // Export as SVG with theme override
  const svgUrl = `https://freeflowcharts.app/api/export/svg?id=${result.shareId}&theme=neon`;
  console.log(`  SVG export: ${svgUrl}`);
}

createFlowchart().catch(console.error);
