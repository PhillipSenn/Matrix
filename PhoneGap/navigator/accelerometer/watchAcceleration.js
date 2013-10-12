var Variables = {};
Variables.x = $('#x');
Variables.y = $('#y');
Variables.z = $('#z');
Variables.timestamp = $('#timestamp');
var counter = 0;

function myDeviceReady() {
	var WatchID = navigator.accelerometer.watchAcceleration(
		 mySuccess
		,myError
		,{
			frequency:1000
		}
	)
}

function mySuccess(a) {
	Variables.x.text(a.x);
	Variables.y.text(a.y);
	Variables.z.text(a.z);
	Variables.timestamp.text(a.timestamp);
}

function myError() {
	$('#msg').text('Error!');
}
