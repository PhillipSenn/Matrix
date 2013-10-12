$('input.SelectAll').click(function() {
	var X = $(this);
	PRINT(X.attr('name'));
	PRINT(X.attr('checked'));
	PRINT(X.prop('checked'));
	$('input[name=' + X.attr('name') + ']').prop('checked',X.prop('checked'));
});
