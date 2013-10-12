$('input').click(function() {
	alert('Ouch!');
	return false;
});
$('a').click(function() {
	PRINT(this.href);
	return false;
});
