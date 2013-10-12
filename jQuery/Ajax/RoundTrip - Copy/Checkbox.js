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

var mySettings = {};
mySettings.data = {};
mySettings.error = function(A, B, C) {
	$('#msg').text('General Error: ' + C);
//	log(A.readyState);
//	log(A.status);
//	log(A.statusText);
//	log(B);
//	log('And finally:');
//	log(A.responseText);
};

mySettings.success = function(result) {
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
}

var StateAbbr;
$('#States a').click(function() {
	var StateID = $(this).data('stateid');
	var option = $('input').filter(':radio:checked').val();
	StateAbbr = $(this).data('stateabbr');
	$('#msg').empty();
	$('#StateName').text($(this).text());
	mySettings.data.method = 'WhereStateID';
	mySettings.data.StateID = StateID;
	if (option === '1') {
		mySettings.data.method = 'SQLServerError';
	} else if (option === '2') {
		mySettings.data.method = 'ColdFusionError';
	} else if (option === '3') {
		mySettings.data.method = 'X';
	}
	if (option === '4') { // Component not found
		var SaveUrl = mySetup.url;
		mySetup.url = 'X.cfc';
		$.ajaxSetup(mySetup);
		$.ajax(mySettings);
		mySetup.url = SaveUrl;
		$.ajaxSetup(mySetup);
	} else {
		$.ajax(mySettings);
	}
});

$('#CityList').delegate('a','click',function() {
	var href = $(this).attr('href');
	$('iframe').attr('src',href);
	return false;
});
