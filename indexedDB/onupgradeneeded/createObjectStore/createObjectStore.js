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
			Println('The "Word" object store already exists');
		} else {
			local.objectStore = local.db.createObjectStore(
				'Word', { 
					 keyPath: 'WordID'
					,autoIncrement:true 
				}
			);
			Print(local.objectStore);
		} 
	}
})(jQuery, window);
