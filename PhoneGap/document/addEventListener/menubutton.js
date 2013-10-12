function myDeviceReady() {
	document.addEventListener('menubutton', mySuccess, false);
}

function mySuccess() {
	Print('menu button!');
}