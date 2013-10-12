$('input,select,textarea,button').focusin(function(myEvent) {
	PRINT(this);
	if ($('input[name=IncludeBubbling]').is(':checked')) {
	} else {
		myEvent.stopPropagation();
	}
});

$('form').focusin(function() {
	PRINT('.focusin() has bubbled up to the form as well');
});
