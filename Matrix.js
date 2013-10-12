$('#ToggleSlider').click(function() {
	$('.slider').slideToggle('slow');
	return false;
});

$('table input[type=checkbox]').change(function() {
	if ($(this).val() === 'Select All') {
		var X = $(this).attr('name');
		var isChecked = $(this).is(':checked');
		$('input[name=' + X + '][type=checkbox]').prop('checked',isChecked);
		if (isChecked) {
			$(this).parent().prev().find('label').text('Deselect All');
		} else {
			$(this).parent().prev().find('label').text('Select All');
		}
	}
	Refresh();
});

$('ul input[type=checkbox]').change(function() {
	if ($(this).val() === 'Select All') {
		var local = {};
		local.name = $(this).attr('name');
		local.isChecked = $(this).is(':checked');
		local.id = $(this).attr('id');
		$('input[name=' + local.name + '][type=checkbox]').prop('checked',local.isChecked);
		if (local.isChecked) {
			$(this).closest('li').find('label').text('Deselect All');
		} else {
			$(this).closest('li').find('label').text('Select All');
		}
	}
	Refresh();
});

Refresh();
