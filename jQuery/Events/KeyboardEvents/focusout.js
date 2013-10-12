$('input,select,textarea,button').focusout(function(myEvent) {
	PRINT(this);
	if ($('input[name=IncludeBubbling]').is(':checked')) {
	} else {
		myEvent.stopPropagation();
	}
});

$('form').focusout(function() {
	PRINT('.focusout() has bubbled up to the form as well');
});
