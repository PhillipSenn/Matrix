request.dbr.onsuccess = function(myEvent) {
	var local = {};
	local.db = myEvent.target.result;
	local.Transaction = local.db.transaction(['Word'],'readwrite');
	local.Store = local.Transaction.objectStore('Word');
	Print(local.Store);
};
