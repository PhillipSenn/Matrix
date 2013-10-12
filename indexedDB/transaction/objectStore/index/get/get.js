var dbr = window.indexedDB.open('Matrix');
dbr.onerror = myError;
dbr.onsuccess = myOpenSuccess;

function myOpenSuccess(myEvent) {
	var local = {};
	local.db = myEvent.target.result;
	local.Transaction = local.db.transaction(['Word']);
	local.Store = local.Transaction.objectStore('Word');
	local.index = local.Store.index('WordName');
	local.request = local.index.get('two');
	local.request.onsuccess = myRequestSuccess;
	local.request.onerror = myError;
};

function myRequestSuccess(myEvent) {
	var local = {};

	local.result = myEvent.target.result;
	if (local.result) {
		for (local.field in local.result) { // not .value
			Print(local.field);
			Print(local.result[local.field]);
		}
	}
}

function myError(myEvent) {
	Print(myEvent);
}

