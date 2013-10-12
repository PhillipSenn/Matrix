$('td').addClass('pointer');

$('td').click(function() {
	var $tr = $(this).closest('tr').clone();
	$tr.addClass('myClass3');
	$('#myTable').append($tr);
});
