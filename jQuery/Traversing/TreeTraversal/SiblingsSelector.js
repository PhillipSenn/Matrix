$('p, a, li').click(function() {
	$('*').removeClass();
	PRINT($(this).text());
	$(this).siblings().addClass('myClass');
});

