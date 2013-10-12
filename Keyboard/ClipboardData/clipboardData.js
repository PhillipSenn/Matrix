function clearData() {
	console.log('clearData');
	window.clipboardData.setData('text','') 
}

function cldata() {
	console.log('cldata');
	if(clipboardData) {
		clipboardData.clearData();
	}
}
setInterval(cldata, 10000);


