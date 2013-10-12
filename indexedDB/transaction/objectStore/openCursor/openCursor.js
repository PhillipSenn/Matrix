var dbr = window.indexedDB.open('Matrix');

dbr.onsuccess = function(myEvent) {
	var local = {};
	local.db = myEvent.target.result;
	local.Transaction = local.db.transaction(['Word']);
	local.Store = local.Transaction.objectStore('Word');
	local.request = local.Store.openCursor();
	local.request.onsuccess = mySuccess;
};

mySuccess = function(myEvent) {
	var local = {};

	local.cursor = myEvent.target.result;
	if (local.cursor) {
		Print(local.cursor.key);
		for (local.field in local.cursor.value) {
			Print(local.field);
			Print(local.cursor.value[local.field]);
		}
		local.cursor.continue(); // Calls mySuccess again
	}
}
