$(document).keydown(function(myEvent) {
	var X = '';
	if (myEvent.ctrlKey) {
		X = "CTRL ";
	}
	
	X += myEvent.which;
	$("#myID").text(X);
	myEvent.preventDefault();
});
