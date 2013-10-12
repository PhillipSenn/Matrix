var dbr = window.indexedDB.open('Matrix');
dbr.onsuccess = myOpenSuccess;

function myOpenSuccess(myEvent) {
	var local = {};

	local.version = myEvent.currentTarget.result.version + 1;
	dbr = null; // let go!
	CreateNewVersion(local.version);
}

function CreateNewVersion(argVersion) {
	var local = {};
	local.dbr = window.indexedDB.open('Matrix',argVersion);
	local.dbr.onupgradeneeded = myUpgradeNeeded;
}

function myUpgradeNeeded(myEvent) {
	Print(myEvent);
}