function myDeviceReady() {
	document.addEventListener('backbutton', mySuccess, false);
}

function mySuccess() {
	Print('back button!');
}