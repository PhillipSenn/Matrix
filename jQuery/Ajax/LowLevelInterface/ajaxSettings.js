var mySetup = {};
mySetup.url = 'my.cfc';
mySetup.type= 'POST'
mySetup.dataType='json';
$.ajaxSetup(mySetup);

var mySettings = {};
mySettings.data = {};
mySettings.data.method = 'myFunction';
mySettings.error = function(xhr, ajaxOptions, thrownError) {
	$('#ErrorMsg').text(thrownError);
};

mySettings.success = function(result) {
	if (result.RTN) { // uppercase RTN
		$('#SuccessWithNoErrors').text(result.X); // uppercase X
		$('#SuccessButWithErrors').empty();
	} else {
		$('#SuccessWithNoErrors').empty();
		$('#SuccessButWithErrors').text(result.MSG); // uppercase MSG
	}
}

mySettings.complete = function() {
	$('#CompleteMsg').text('Complete.');
}

var Calculate = function() {
	mySettings.data.A = $('input[name=A]').val();
	mySettings.data.B = $('input[name=B]').val();
	$.ajax(mySettings);
}
Calculate();

$('input').keyup(Calculate);
