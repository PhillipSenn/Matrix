var setup = {};

setup.type= 'POST'
setup.dataType='json';
$.ajaxSetup(setup);

var settings = {};
settings.data = {};
settings.data.method = 'myFunction';
settings.error = function(xhr, ajaxOptions, thrownError) {
	$('#ErrorMsg').text(thrownError);
};

settings.success = function(result) {
	if (result.RTN) { // uppercase RTN
		$('#SuccessWithNoErrors').text(result.X); // uppercase X
		$('#SuccessButWithErrors').empty();
	} else {
		$('#SuccessWithNoErrors').empty();
		$('#SuccessButWithErrors').text(result.MSG); // uppercase MSG
	}
};

settings.complete = function() {
	$('#CompleteMsg').text('Complete.');
};

var Calculate = function() {
	settings.data.A = $('input[name=A]').val();
	settings.data.B = $('input[name=B]').val();
	$.ajax('my.cfc',settings);
}
Calculate();

$('input').keyup(Calculate);
