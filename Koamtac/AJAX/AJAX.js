var getKoamTac = function(name,index) {
	return $('.koamtac-' + name,$('.koamtac-class').eq(index)).text();
}


var mySetup = {};
mySetup.url = 'AJAX.cfc';
mySetup.type= 'POST'
mySetup.dataType='json';
$.ajaxSetup(mySetup);

var Save = function() {
	var myXHR;
	var mySettings = {};
	var Temperature = $('#Temperature').val();
	var Location = $('#Location').val();
	Temperature = parseInt(Temperature,10)+0;

	if (Location && Temperature) {
		mySettings.data = {};
		mySettings.data.method = 'Save';
		mySettings.data.Temperature = Temperature;
		mySettings.data.Location = Location;
		myXHR = $.ajax(mySettings);
		myXHR.done(function(result) {
			if (result.ERR) { // uppercase ERR
				$('#debug').text(result.MSG); // uppercase MSG
			} else {
				var tr = '<tr><td>' + Location + '</td><td>' + Temperature + '</td><td>Todo</td></tr>'
				$('tbody').prepend(tr);
			}
		});
	
		myXHR.fail(function(A, B, C) {
			$('#debug').html(B + ': ' + C + '<br>readyState: ' + A.readyState + ', status: ' + A.status + '<br>statusText: ' + A.statusText);
			log(A.responseText);
		});
	}
}

$('#btnTemperature').click(function() {
	$('#koamtac-outputid').text('Scan the location');
	Save();
});
$('#btnLocation').click(function() {
	$('#koamtac-outputid').text('Scan the temperature');
	Save();
});
