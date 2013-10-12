$('ul').click(function(myEvent) {
	var X = $('p').add('li',this);
	PRINT(X);
	if ($('input[name=myPropagation]').is(':checked')) {
		myEvent.stopPropagation(); 
	}
});
