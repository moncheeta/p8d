function createRow(data, max_length, total_hours) {
  const { date, hours, text } = data;
  var row = date.toLowerCase().padEnd(max_length);
  row += " | ";

  if (hours > 0 && total_hours > 0) {
    const bar_length = Math.ceil((hours / total_hours) * (100 / 5));
    const bar = "#".repeat(bar_length);
    if (bar.length !== 0) {
      row += `${bar} `;
    }
  }
  row += `${text}\n`;
  return row;
}

function createChart(data) {
  const table = [];
  var max_length = 0;
  var total_hours = 0;
  data.forEach((entry) => {
    const date = entry.range.text.replace(/\s*\d{4}$/, "");
    max_length = Math.max(max_length, date.length);
    const { total_seconds, text: timeText } = entry.grand_total;
    const hours = total_seconds / 60 / 60;
    total_hours += hours;
    table.push({ date, hours, text: timeText });
  });

  var chart = "";
  table.forEach((row) => {
    chart += createRow(row, max_length, total_hours);
  });
  var total_minutes = total_hours % 1;
  total_hours -= total_minutes;
  total_minutes = Math.ceil(total_minutes * 60);
  chart += `total: ${total_hours} hours and ${total_minutes} minutes`;
  return chart;
}

$.ajax({
  type: "GET",
  url: "https://wakatime.com/share/@Moncheeta/235513c0-b88a-483b-a5a5-d0f54e7c471e.json",
  dataType: "jsonp",
  success: function (response) {
    const chart = createChart(response.data);
    for (let element of document.getElementsByClassName("activity")) {
      element.textContent = chart;
    }
  },
  error: function (error) {
    console.error("Error fetching data:", error);
    document.getElementById("activity-small").textContent = "Failed to load chart";
    document.getElementById("activity-big").textContent = "Failed to load chart";
  },
});
