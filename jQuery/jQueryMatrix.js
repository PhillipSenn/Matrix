var Refresh = function() {
	var local = {};
	local.tbody = $('#matrix tbody').detach();
	local.tbody.find('tr').show();
	
	$('input[name=Usage][type="checkbox"]').each(function() {
		var SearchString = $(this).val().toUpperCase();
		var isChecked = $(this).is(':checked');
		if (!isChecked) {
			local.tbody.find('tr').each(function() {
				if (SearchString === $(this).find('td:eq(4)').text().toUpperCase()) {
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

	$('input[name=Attr][type="checkbox"]').each(function() {
		var SearchString = $(this).val().toUpperCase();
		var isChecked = $(this).is(':checked');
		if (!isChecked) {
			local.tbody.find('tr').each(function() {
				if (SearchString === $(this).find('td:eq(2)').text().toUpperCase()) {
					$(this).hide();
				};
			});
		}
	});
	
	$('input[name=Returns][type="checkbox"]').each(function() {
		var SearchString = $(this).val().toUpperCase();
		var isChecked = $(this).is(':checked');
		if (!isChecked) {
			local.tbody.find('tr').each(function() {
				if (SearchString === $(this).find('td:last').text().toUpperCase()) {
					$(this).hide();
				}
			});
		}
	});
	
	$('#matrix').append(local.tbody);

	/*
	todo: If multiple links have the same href, then only show the first link.
	$('#matrix a').removeClass();
	$('#matrix a').filter(':visible').each(function() {
		if (this.text === 'removeClass') {
			log('what?');
		}
		var local = {};
		local.href = this.href;
		local.Counter = 0;
		$('a').each(function(index, element) {
			if (element.href === local.href) {
				local.Counter+=1;
			}
		});
		if (local.Counter === 1) {
			if (this.hostname === 'www.w3.org') {
				$(this).addClass("w3");
			}
			if (this.hostname === 'api.jquery.com') {
				$(this).addClass("jQuery");
			}
		}
	});
	*/
};

