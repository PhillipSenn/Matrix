var dbr = window.indexedDB.open('Matrix');
dbr.onerror = myError;
dbr.onsuccess = myOpenSuccess;

function myOpenSuccess(myEvent) {
	debugger;
	var local = {};
	local.db = myEvent.target.result;
	local.Transaction = local.db.transaction(['Word']);
	local.Store = local.Transaction.objectStore('Word');
	local.index = local.Store.index('WordName');
	Print(local.index);
};

function myError(myEvent) {
	Print(myEvent);
}

