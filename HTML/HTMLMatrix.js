$("ul.sf-menu").superfish(); 
$('ul.sf-menu').superfish({ 
	delay:       1000,                            // one second delay on mouseout 
	animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation 
	speed:       'fast',                          // faster animation speed 
	autoArrows:  false,                           // disable generation of arrow mark-up 
	dropShadows: false                            // disable drop shadows 
}); 


var Refresh = function() {
	var local = {};
	local.tbody = $('#matrix tbody').detach();
	local.tbody.find('tr').show();
	
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
				if (SearchString === $(this).find('td:eq(0)').text().toUpperCase()) {
					$(this).hide();
				};
			});
		}
	});
	$('input[name=Event][type="checkbox"]').each(function() {
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

	$('input[name=Usage][type="checkbox"]').each(function() {
		var SearchString = $(this).val().toUpperCase();
		var isChecked = $(this).is(':checked');
		if (!isChecked) {
			local.tbody.find('tr').each(function() {
				if (SearchString === $(this).find('td:eq(1)').text().toUpperCase()) {
					$(this).hide();
				}
			});
		}
	});

};

$('input[type="checkbox"]').change(function() {
	if ($(this).val() !== 'Select All') {
		var local = {};
		local.name = $(this).attr('name');
		$('input[name=' + local.name + ']').last().prop('checked',false).closest('td').prev().text('Select All');
}
});
														  
