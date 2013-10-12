function myDeviceReady() {
	navigator.camera.getPicture(
		 mySuccess
		,myError
		,{
			 quality:50
			,destinationType:Camera.DestinationType.FILE_URI
		}
	);
}

function mySuccess(myFile) {
	// Print('Success');
	Print(myFile);
}

function myError() {
	Print('Error!');
}
