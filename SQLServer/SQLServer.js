var Refresh = function() {
	var local = {};
	local.tbody = $('#matrix tbody').detach();
	local.tbody.find('tr').show();
	$('input[name=Usage][type="checkbox"]').each(function() {
		var SearchString = $(this).val().toUpperCase();
		var isChecked = $(this).is(':checked');
		if (!isChecked) {
			local.tbody.find('tr').each(function() {
				if (SearchString === $(this).find('td:eq(2)').text().toUpperCase()) {
					$(this).hide();
				}
			});
		}
	});

	$('input[name=Cat][type="checkbox"]').each(function() {
		var SearchString = $(this).val().toUpperCase();
		var isChecked = $(this).is(':checked');
		if (!isChecked) {
			local.tbody.find('tr').each(function() {
				if (SearchString === $(this).find('td:eq(0)').text().toUpperCase()) {
					$(this).hide();
				};
			});
		}
	});
	
	$('#matrix').append(local.tbody);
};

$('ul.menu').menu();

