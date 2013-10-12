var Variables = {};
Variables.coords = {};
Variables.coords.latitude = $('#latitude');
Variables.coords.longitude = $('#longitude');
Variables.count = $('#count');
var counter = 0;

function myDeviceReady() {
	Variables.coords.latitude.text('myDeviceReady latitude');
	Variables.coords.longitude.text('myDeviceReady longitude');
	var watchId = navigator.geolocation.watchPosition(
		 mySuccess
		,myError
		,{
			frequency:1000
		}
	)
}

function mySuccess(myPosition) {
	Variables.coords.latitude.text(myPosition.coords.latitude);
	Variables.coords.longitude.text(myPosition.coords.longitude);
	counter++;
	Variables.count.text(counter);
}

function myError() {
	$('#msg').text('Error!');
}
