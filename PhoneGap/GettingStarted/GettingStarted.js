$(document).bind('deviceready', function() {
	$('#GettingStarted').append(
		'Device Name: '     + device.name     + '<br />' + 
		'Device PhoneGap: ' + device.phonegap + '<br />' + 
		'Device Platform: ' + device.platform + '<br />' + 
		'Device UUID: '     + device.uuid     + '<br />' + 
		'Device Version: '  + device.version  + '<br />'
	)
});
