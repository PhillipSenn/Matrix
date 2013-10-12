request.dom.DivisionID = $('#DivisionID');
request.dom.StateID = $('#StateID');
request.dom.StateName = $('#StateName');
request.dom.States = $('#States a');

// var request = {}; // foot.js
request.PromiseFail = function(A,B,C) {
	debugger;
	$('header').html(B + ': ' + C);
};

// Read
(function() {
	$('#States').on('click','a',SelectState);
	function SelectState() {
		var local = {};
		local.data = {};
		local.data.method = 'REMOTE_Read';
		local.data.StateID = $(this).data('stateid');
		local.type = 'get';
		// local.context = this;
		// local.dataType = 'json'; // supplied by $.ajaxSetup in foot.js
		local.Promise = $.ajax('/Matrix/com/State.cfc',local);
		local.Promise.done(SelectStateDone);
		local.Promise.fail(request.PromiseFail);
	}

	function SelectStateDone(RESULT) { // This reminds me that ColdFusion returns the fieldnames in upper case.
		var local = {};
		if (RESULT.MSG) {
			$(this).closest('header').text(RESULT.MSG);
		} else {
			$('#StateID').val(RESULT.QRY.DATA.STATEID[0]);
			$('#StateName').val(RESULT.QRY.DATA.STATENAME[0]);
			if (RESULT.QRY.DATA.ISSTATE[0]) {
				$('#isState').val(1);
			} else {
				$('#isState').val(0);
			}
			$('#isState').slider('refresh');
			$('#Population').val(RESULT.QRY.DATA.POPULATION[0]);
			$('#Statehood').val(RESULT.QRY.DATA.STATEHOOD[0]);
			$('#StateAbbr').val(RESULT.QRY.DATA.STATEABBR[0]);
			request.dom.DivisionID.find('option').each(function(index) {
				local.DivisionID = parseInt($(this).val());
				if (local.DivisionID === RESULT.QRY.DATA.DIVISIONID[0]) {
					request.dom.DivisionID[0].selectedIndex = index;
				}
			});
			
			$('#DivisionID').selectmenu('refresh');
			SelectCities(RESULT.QRY.DATA.STATEID[0]);
		}
	}
	
	SelectCities = function(StateID) {
		var local = {};

		local.data = {};
		local.data.method = 'REMOTE_WhereStateID';
		local.data.StateID = StateID;
		// local.dataType = 'json';
		local.Promise = $.ajax('/Matrix/com/City.cfc',local);
		local.Promise.done(SelectCitiesDone);
		local.Promise.fail(request.PromiseFail);
	}
	
	SelectCitiesDone = function(RESULT) {
		var local = {};

		$('#Cities h3').text(RESULT.QRY.ROWCOUNT + ' cities');
		local.arr = [];
		// bare metal loop
		for (var CurrentRow in RESULT.QRY.DATA.CITYID) {
			local.arr[CurrentRow] = '<li>'
			+ RESULT.QRY.DATA.CITYNAME[CurrentRow]
			+ '</li>';
		}
		// Now add it to the DOM
		$('#Cities ul').html(local.arr.join(''));
		$('#Cities ul').listview('refresh');
		$('#Cities').collapsibleset('refresh');
		// $('#State').trigger('pageshow'); 		
	}
})();


// Save
(function() {
	$(document).on('click','#Save',SaveState);
	function SaveState() {
		var local = {};

		local.data = {};
		local.data.method = 'REMOTE_Save';
		local.data.StateID = $('#StateID').val();
		local.data.StateName = request.dom.StateName.val();
		local.data.isState = $('#isState').val();
		local.data.Statehood = $('#Statehood').val();
		local.data.StateAbbr = $('#StateAbbr').val();
		local.data.DivisionID = $('#DivisionID').val();
		local.data.Population = $('#Population').val();
		$(this).closest('section').find('header').html('<h1>Saving...</h1>');
		
		// local.type = 'post';			// $.ajaxSetup in foot.js
		// local.dataType = 'json';	// $.ajaxSetup in foot.js
		local.Promise = $.ajax('/Matrix/com/State.cfc',local);
		local.StateSaved = StateSaved.bind(this,local.data);
		local.Promise.done(StateSaved);
		local.Promise.fail(request.PromiseFail);
	}
	
	function StateSaved(RESULT) {
		var local = {};
		if (RESULT.MSG) {
			$(this).closest('header').text(RESULT.MSG);
		} else {
			// Refresh the name of the state on the #States page.
			request.dom.States.each(function(index) {
				if ($(this).data('stateid') === RESULT.QRY.DATA.STATEID[0]) {
					$(this).text(RESULT.QRY.DATA.STATENAME[0]);
				}
			});
		}
	}
})();

