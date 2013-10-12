$('#myID').ajaxStop(function() {
	$(this).hide();
});

$('button').click(function() {
	$.ajax();
});

