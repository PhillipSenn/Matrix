var setup = {};
setup.type= 'POST'
setup.dataType='json';
$.ajaxSetup(setup);

var settings = {};
myData = {};
myData.method = 'myFunction';
settings.error = function(xhr, ajaxOptions, thrownError) {
	$('#ErrorMsg').text(thrownError);
};

var Calculate = function() {
	myData.A = $('input[name=A]').val();
	myData.B = $('input[name=B]').val();
	$.ajax({
		url:'my.cfc',
		data:myData,
		success:function(result) {
			if (result.RTN) { // uppercase RTN
				$('#SuccessWithNoErrors').text(result.X); // uppercase X
				$('#SuccessButWithErrors').empty();
			} else {
				$('#SuccessWithNoErrors').empty();
				$('#SuccessButWithErrors').text(result.MSG); // uppercase MSG
			}
		},
		complete:function() {
			$('#CompleteMsg').text('Complete.');
		}
	});
}
Calculate();

$('input').keyup(Calculate);
