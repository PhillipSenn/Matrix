function myDeviceReady() {
	document.addEventListener('pause', mySuccess, false);
}

function mySuccess() {
	Print('Success!');
}