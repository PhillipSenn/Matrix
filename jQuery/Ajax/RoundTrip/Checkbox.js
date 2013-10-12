// encodeURIComponent

$('#spinner').ajaxStart(function() {
	$(this).slideDown();
}).ajaxStop(function() {
	$(this).slideUp('slow');
});

var mySetup = {};
mySetup.url = 'Checkbox.cfc';
mySetup.type= 'POST'
mySetup.dataType='json';
$.ajaxSetup(mySetup);

$('#States a').click(function() {
	var myXHR; // This is an XHR object inside a jQuery object
	var mySettings = {};
	var StateID = $(this).data('stateid');
	var option = $('input').filter(':radio:checked').val();
	var StateAbbr = $(this).data('stateabbr');
	
	$('#msg').empty();
	$('#StateName').text($(this).text());
	mySettings.data = {};
	mySettings.data.method = 'WhereStateID';
	mySettings.data.StateID = StateID;
	if (option === '1') {
		mySettings.data.method = 'SQLServerError';
	} else if (option === '2') {
		mySettings.data.method = 'ColdFusionError';
	} else if (option === '3') {
		mySettings.data.method = 'X';
	}
	if (option === '4') {
		myXHR = $.ajax('X.cfc',mySettings); // Component not found
	} else {
		myXHR = $.ajax(mySettings);
	}
	myXHR.done(function(result) {
		if (result.ERR) { // uppercase ERR
			$('#msg').text(result.MSG); // uppercase MSG
		} else {
			var CurrentRow = 0,
				arr = [];
				// Normalize the JavaScript property names to ColdFusion property names
			var qryCity = result.qry.DATA;
			qryCity.RecordCount = result.qry.ROWCOUNT;
			qryCity.ColumnList = result.qry.COLUMNS;
			$('tfoot td').text(qryCity.RecordCount + ' cities');
			// bare metal loop
			for (var CurrentRow in qryCity.CITYID) {
				arr[CurrentRow] = '<tr>'
				+ '<td><a href="http://maps.google.com/?q=' 
				+ qryCity.CITYNAME[CurrentRow]
				+ ',+' + StateAbbr + '&amp;output=embed">' 
				+ qryCity.CITYNAME[CurrentRow] 
				+ '</a></td></tr>';
			}
			// Now add it to the DOM
			$('tbody')[0].innerHTML = arr.join('');
		}
	});

	myXHR.fail(function(A, B, C) {
		$('#msg').html(B + ': ' + C + '<br>readyState: ' + A.readyState + ', status: ' + A.status + '<br>statusText: ' + A.statusText);
		log(A.responseText);
	});
});

$('#CityList').delegate('a','click',function() {
	var href = $(this).attr('href');
	$('iframe').attr('src',href);
	return false;
});
