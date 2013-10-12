var dbr = window.indexedDB.open('Matrix');

dbr.onsuccess = function(myEvent) {
	var local = {};
	local.db = myEvent.target.result;
	local.Transaction = local.db.transaction(['Word']);
	local.Store = local.Transaction.objectStore('Word');
	local.request = local.Store.get(2);
	local.request.onsuccess = mySuccess;
};

mySuccess = function(myEvent) {
	var local = {};

	local.field = null;
	local.result = myEvent.target.result;
	Print(local.result);
	if (local.result) {
		Println("<p>Iterating through them...</p>");
		for (local.field in local.result) {
			Print(local.field);
			Print(local.result[local.field]);
		}
	}
}
