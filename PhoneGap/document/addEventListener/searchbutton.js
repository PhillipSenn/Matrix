function myDeviceReady() {
	document.addEventListener('searchbutton', mySuccess, false);
}

function mySuccess() {
	Print('search button!');
}