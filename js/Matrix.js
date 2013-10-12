$('#relevant').click(function() {
	if ($(this).is(':checked')) {
		$('#HTMLSource div').hide(); // Hide every div inside the HTMLSource id.
		$('.relevant').show(); // And show relevant only.
	} else { // Show everything
		$('#HTMLSource div').show();
	}
});
