$('form').submit(function(myEvent) {
	myEvent.preventDefault();
});

var mySetup = {};
mySetup.url = 'preventDefault.cfc?queryFormat=column';
mySetup.type= 'POST'
mySetup.dataType='json';
$.ajaxSetup(mySetup);

var mySettings = {};
mySettings.data = {};
mySettings.error = function(A, B, C) {
	$('#msgErr').text(C);
};

mySettings.success = function(result) {
	var qryCity = result.qry.DATA,
		CurrentRow = 0,
		arr = [];
	// bare metal loop
	for (CurrentRow in qryCity.CITYID) {
		arr[CurrentRow] = '<option value="' + qryCity.CITYID[CurrentRow] + '">' + qryCity.CITYNAME[CurrentRow] + '</option>';
	}
	// Now add it to the DOM
	if ($Cities === null) {
		$Cities = $('<select name="CityID"></select>').appendTo('form');
		$Save.remove();
		$('form').append('<input name="Save" type="submit" value="Save">');
	}
	$Cities.html(arr.join(''));
}

$('select[name=StateID]').change(function() {
	mySettings.data.method = 'WhereStateID';
	mySettings.data.StateID = $(this).val();
	$.ajax(mySettings);
});

var $Cities = null;
var $Save = $('input[name=Save]');
// $Save[0].setAttribute('type','button');
