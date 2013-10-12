var dbr = window.indexedDB.open('Matrix');

dbr.onsuccess = function(myEvent) {
	var local = {};
	local.db = myEvent.target.result;
	local.Transaction = local.db.transaction(['Word'],'readwrite');
	Print(local.Transaction);
};
