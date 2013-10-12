!function($, window, undefined) {
	var local = {};
	
	local.data = {};
	local.type= 'post',
		local.dataType= 'json',
		local.data.method = 'Save',
		local.data.Items = JSON.stringify(
			{
				ItemNos:[1,2,3],
				ItemNames:"A,B,Don't"
			}
		);
	var myPromise = $.ajax('Upload.cfc',local);
	myPromise.done(function(result) {
		console.log('success!');
	});
	
	myPromise.fail(function(A,B,C) {
		$('body').append(A.responseText);
		console.log(B);
		console.log(C);
	});
}(jQuery, window);
