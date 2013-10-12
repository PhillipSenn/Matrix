function myKeyDown(myEvent) {
	var X = String.fromCharCode(myEvent.keyCode).toLowerCase();
	console.log(myEvent.ctrlKey);
	console.log(X);
	if (myEvent.ctrlKey && (X == "c" || X == "v")) {
		myEvent.returnValue = false;
	}
}
