$('form').submit(function(myEvent) {
	PRINT(myEvent.cancelable);
	myEvent.stopPropagation();
	return false;
});
