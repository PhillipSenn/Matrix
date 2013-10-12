var setup = {};
setup.url = 'ASCII.cfc?queryFormat=column';
setup.type= 'POST'
setup.dataType='json';
setup.error = function() {
	$('#msg').text('An Ajax error has occurred.');
};

jQuery.ajaxSetup(setup);

$('input').filter(':radio').click(function() {
	var $tr = $(this).closest('tr');
	var settings = {};
	settings.data = {};
	settings.data.method = 'InsertVote';
	settings.data.GridID = $tr.data('gridid');
	settings.data.UsageID = $(this).val();
	settings.success = function(result){
		var qryVote = result.qry.DATA;
		qryVote.RecordCount = result.qry.ROWCOUNT; // Normalize
		qryVote.ColumnList = result.qry.COLUMNS; // Normalize
		var spark = 
		  qryVote.INTRODUCTION + ','
		+ qryVote.BEGINNER + ','
		+ qryVote.INTERMEDIATE + ','
		+ qryVote.ADVANCED + ','
		+ qryVote.INTERNATIONAL;
		$('td:eq(1)',$tr)
			.text(spark)
			.sparkline('html', {type: 'bar', colorMap:["blue", "cornflowerblue", "green", "orange", "red"]} );
	};
	$.ajax(settings);
});

var Refresh = function() {
	var local = {};
	local.tbody = $('#matrix tbody').detach();
	local.tbody.find('tr').show();
	
	$('input[name=UsageNames][type="checkbox"]').each(function() {
		var SearchString = $(this).val().toUpperCase();
		var isChecked = $(this).is(':checked');
		if (!isChecked) {
			local.tbody.find('tr').each(function() {
				if (SearchString === $(this).find('td:eq(0)').text().toUpperCase()) {
					$(this).hide();
				}
			});
		}
	});
	if ($('#UsageID4').is(':checked')) {
		$('#matrix thead th:eq(5)').show();
		local.tbody.find('td').show();
	} else {
		$('#matrix thead th:eq(5)').hide();
		local.tbody.find('tr').each(function() {
			$('td:eq(5)',this).hide();
		})
	}
	$('#matrix').append(local.tbody);
	$('td.spark').filter(':visible')
		.removeClass('spark')
		.sparkline('html', {type: 'bar', colorMap:["blue", "cornflowerblue", "green", "orange", "red"]} );
};


