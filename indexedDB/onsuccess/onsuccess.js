var dbr = window.indexedDB.open("Matrix");
dbr.onsuccess = mySuccess;
dbr.onerror = myErrorHandler;

function mySuccess(myEvent) {
	Print(myEvent);
}

function myErrorHandler(myEvent) {
	Print(myEvent);
}