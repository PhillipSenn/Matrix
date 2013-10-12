function myDeviceReady() {
	document.addEventListener('resume', mySuccess, false);
}

function mySuccess() {
	Print('Success!');
}