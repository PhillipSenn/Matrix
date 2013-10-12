function drawVisualization() {
	var countries =
	['Bolivia', 'Ecuador',
	'Madagascar', 'Papua  Guinea', 'Rwanda'];
	var months = ['2004/05', '2005/06', '2006/07', '2007/08', '2008/09'];
	var productionByCountry = [[165, 135, 157, 139, 136],
	[938, 1120, 1167, 1110, 691],
	[522, 599, 587, 615, 629],
	[998, 1268, 807, 968, 1026],
	[450, 288, 397, 215, 366]];
	
	// Create and populate the data table.
	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Month');
	for (var i = 0; i < countries.length; ++i) {
		data.addColumn('number', countries[i]);
	}
	data.addRows(months.length);
	for (var i = 0; i < months.length; ++i) {
		data.setCell(i, 0, months[i]);
	}
	for (var i = 0; i < countries.length; ++i) {
		var country = productionByCountry[i];
		for (var month = 0; month < months.length; ++month) {
			data.setCell(month, i + 1, country[month]);
		}
	}
	// Create and draw the visualization.
	var ac = new google.visualization.AreaChart(
		$('#visualization')[0]);
		ac.draw(data, {
			title : 'Monthly Coffee Production by Country',
			isStacked: true,
			width: 600,
			height: 400,
			vAxis: {title: "Cups"},
			hAxis: {title: "Month"}
		}
	);
}

google.setOnLoadCallback(drawVisualization);
