var setup = {};

setup.type= 'POST'
setup.dataType='json';
$.ajaxSetup(setup);

var Calculate = function() {
	var local = {};
	local.A = $('input[name=A]').val();
	local.B = $('input[name=B]').val();
	$.ajax({
		url:'my.cfm?A=' + local.A + '&B=' + local.B,
		success:function(result) {
			$('#SuccessWithNoErrors').text(result);
		},
		error:function(xhr, ajaxOptions, thrownError) {
			$('#msgErr').text(thrownError);
		},
		complete:function() {
			var currentTime = new Date();
			var hours = currentTime.getHours();
			var minutes = currentTime.getMinutes();
			var seconds = currentTime.getSeconds();
			$('#CompleteMsg').text('Completed at ' + hours +':'+ minutes +':'+ seconds)
		}
	});
}
/* Calculate(); */

$('input').keyup(Calculate);
