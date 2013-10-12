;(function($, window, undefined) {
	var Variables = {};
	Variables.dbr = null;
	
	function init() {
		var local = {};
		local.dbr = window.indexedDB.open('Matrix');
	
		local.dbr.onsuccess = function(myEvent) {
			VersionReady(myEvent.currentTarget.result.version);
		}
	}
	
	function VersionReady(argVersion) {
		var local = {};
		Variables.dbr = window.indexedDB.open('Matrix',argVersion+1);
		Variables.dbr.onupgradeneeded = myUpgradeNeeded;
	}
	init();
	
	function myUpgradeNeeded(myEvent) {
		var local = {};
		local.db = myEvent.target.result;
		if(local.db.objectStoreNames.contains('Word')) {
			local.Store = myEvent.currentTarget.transaction.objectStore('Word');
		} else {
			local.Store = local.db.createObjectStore(
				'Word', { 
					 keyPath: 'WordID'
					,autoIncrement:true 
				}
			);
		} 
		debugger;
		local.Store.createIndex('WordName', 'WordName', {unique:false});
		$('#wait').hide();
	}
})(jQuery, window);
