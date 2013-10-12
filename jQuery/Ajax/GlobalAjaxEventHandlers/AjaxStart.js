$('#myID').ajaxStart(function() {
	$(this).show();
});

$('button').click(function() {
	$.ajax();
});

