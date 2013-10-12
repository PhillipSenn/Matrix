if (typeof myDeviceReady === 'undefined') {
	Print('myDeviceReady is not defined!');
} else {
	document.addEventListener("deviceready", myDeviceReady, false);
}

function myConnection() {
	var local = {};
	local.ConnectionName = {};
	local.ConnectionName[Connection.UNKNOWN]  = 'Unknown connection';
	local.ConnectionName[Connection.ETHERNET] = 'Ethernet connection';
	local.ConnectionName[Connection.WIFI]     = 'WiFi connection';
	local.ConnectionName[Connection.CELL_2G]  = 'Cell 2G connection';
	local.ConnectionName[Connection.CELL_3G]  = 'Cell 3G connection';
	local.ConnectionName[Connection.CELL_4G]  = 'Cell 4G connection';
	local.ConnectionName[Connection.NONE]     = 'No network connection';
	return local.ConnectionName[navigator.network.connection.type];
}
