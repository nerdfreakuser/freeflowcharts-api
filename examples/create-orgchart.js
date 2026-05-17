// Create an org chart via the FreeFlowCharts API
const response = await fetch("https://freeflowcharts.app/api/create-orgchart", {
  method: "POST",
  headers: { "Content-Type": "application/json" },
  body: JSON.stringify({
    title: "Engineering Team",
    createdBy: "Node.js Script",
    nodes: [
      { id: "1", label: "VP Engineering", title: "Vice President" },
      { id: "2", label: "Frontend Lead", title: "Senior Engineer", parentId: "1" },
      { id: "3", label: "Backend Lead", title: "Senior Engineer", parentId: "1" },
      { id: "4", label: "Alice", title: "Frontend Dev", parentId: "2" },
      { id: "5", label: "Bob", title: "Frontend Dev", parentId: "2" },
      { id: "6", label: "Carol", title: "Backend Dev", parentId: "3" },
    ],
  }),
});

const data = await response.json();
console.log("Org Chart URL:", data.url);
console.log("Embed:", data.embed);
