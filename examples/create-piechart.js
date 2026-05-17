// Create a pie chart via the FreeFlowCharts API
const response = await fetch("https://freeflowcharts.app/api/create-piechart", {
  method: "POST",
  headers: { "Content-Type": "application/json" },
  body: JSON.stringify({
    title: "Q1 Revenue by Product",
    createdBy: "Node.js Script",
    slices: [
      { label: "SaaS Platform", value: 45 },
      { label: "Consulting", value: 25 },
      { label: "Training", value: 15 },
      { label: "Support Contracts", value: 10 },
      { label: "Other", value: 5 },
    ],
    donut: true,
  }),
});

const data = await response.json();
console.log("Pie Chart URL:", data.url);
console.log("Embed:", data.embed);
