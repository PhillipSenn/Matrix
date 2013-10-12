function myDeviceReady() {
	document.addEventListener('offline', mySuccess, false);
}

function mySuccess() {
	Print('offline!');
}