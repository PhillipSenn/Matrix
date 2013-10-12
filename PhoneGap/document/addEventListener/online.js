function myDeviceReady() {
	document.addEventListener('online', mySuccess, false);
}

function mySuccess() {
	Print('online!');
}