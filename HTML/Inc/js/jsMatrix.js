var Init = function() {
	$('#js tbody tr').hide();
	$(':checked').each(function() {
		var Display = $(this).val().toUpperCase();
		$('tr').each(function() {
			var $td = $(this).find('td:eq(1)');
			if ($td.text().toUpperCase() === Display) {
				$(this).show();
			};
		});
	});
};

$('form :checkbox').change(function() {
	if ($(this).val() === 'ALL') {
		if ($(this).prop('checked')) {
			$(':checkbox').attr('checked','checked');
	  } else {
			$(':checkbox').removeAttr('checked');
	  }
	}
	Init();
});

Init();
