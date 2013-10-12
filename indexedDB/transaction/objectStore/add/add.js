var dbr = window.indexedDB.open('Matrix');

dbr.onsuccess = function(myEvent) {
	var local = {};
	local.db = myEvent.target.result;
	local.Transaction = local.db.transaction(['Word'],'readwrite');
	local.Store = local.Transaction.objectStore('Word');
	local.data = {};
	local.data.WordName = 'one';
	local.data.DateUpdated = new Date();
	local.Store.add(local.data);
	local.data.WordName = 'two';
	local.Store.add(local.data);
};
