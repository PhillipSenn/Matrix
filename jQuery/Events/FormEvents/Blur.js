$('input').blur(function(myEvent) {
	$('.myClass').removeClass('myClass');
	$(this).addClass('myClass');
	PRINT(myEvent);
	PRINT(this);
});