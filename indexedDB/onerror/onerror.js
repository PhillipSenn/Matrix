var dbr = window.indexedDB.open("Matrix",2);

var dbr = window.indexedDB.open("Matrix",1); // But wait! We've already upgraded to version 2!
dbr.onerror = myError;

myError = function(errorEvent) {
	Print(errorEvent.srcElement.error.name);
	if (errorEvent.srcElement.webkitErrorMessage) {
		Print(errorEvent.srcElement.webkitErrorMessage);
	}
	Print(errorEvent);
}
