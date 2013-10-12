function myDeviceReady() {
	var watchID = navigator.compass.watchHeading(
		 mySuccess
		,myError
		,{
			frequency:3000
		}
	);
}

function mySuccess(myHeading) {
	$('#Print').empty();
	Print(myHeading);
}

function myError() {
	$('#msg').text('Error!');
}
