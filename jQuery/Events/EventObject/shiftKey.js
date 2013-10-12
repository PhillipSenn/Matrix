$(document).keydown(function(myEvent) {
	var X = '';
	if (myEvent.shiftKey) {
		X = "SHIFT ";
	}
	
	X += myEvent.which;
	$("#myID").text(X);
	myEvent.preventDefault();
});
