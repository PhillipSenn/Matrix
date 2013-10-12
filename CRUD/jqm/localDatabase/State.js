(function() {
	var document = window.document;
	$('ul#StatesUL li').on('click','a',function() { // When the user clicks on a state anchor tag
		var local = {};
		local.data = {};
		local.data.method = 'Read';
		local.data.StateID = $(this).data('stateid');
		// local.dataType = 'json';
		local.Promise = $.ajax('State.cfc',local); // SELECT * FROM State WHERE StateID=?
		local.Promise.done(StatePromiseDone);
		local.Promise.fail(window.ajaxPromiseFail);
	});
	
	StatePromiseDone = function(ajaxResult) {
		var local = {};
		if (ajaxResult.MSG) {
			$(this).closest('header').text(ajaxResult.MSG);
		} else {
			local.qryState = ajaxResult.QRY.DATA; // UPPERCASE
			DOM.StateID.val(local.qryState.STATEID[0]); // UPPERCASE
			DOM.StateName.val(local.qryState.STATENAME[0]); // UPPERCASE
			if (local.qryState.ISSTATE[0]) { // UPPERCASE
				$('#isState').val(1);
			} else {
				$('#isState').val(0);
			}
			$('#isState').slider('refresh');
			$('#Population').val(local.qryState.POPULATION[0]); // UPPERCASE
			$('#Statehood').val(local.qryState.STATEHOOD[0]); // UPPERCASE
			$('#StateAbbr').val(local.qryState.STATEABBR[0]); // UPPERCASE
			DOM.DivisionID.find('option').each(function(index) {
				if ($(this).val() == local.qryState.STATE_DIVISIONID[0]) { // === doesn't work here.
					DOM.DivisionID[0].selectedIndex = index;
				}
			});
			$('#DivisionID').selectmenu('refresh');
			getCities(local.qryState.STATEID[0]);
		}
	}
	
	getCities = function(StateID) {
		var local = {};
		local.data = {};
		local.data.method = 'getCities';
		local.data.StateID = StateID;
		// local.dataType = 'json';
		local.Promise = $.ajax('City.cfc',local); // SELECT * FROM City WHERE City_StateID=?
		local.Promise.done(CityPromiseDone);
		local.Promise.fail(window.ajaxPromiseFail);
	}
	
	CityPromiseDone = function(ajaxResult) {
		var local = {};
		local.qryCity = ajaxResult.QRY.DATA;
		local.qryCity.RecordCount = ajaxResult.QRY.ROWCOUNT;
		local.qryCity.ColumnList = ajaxResult.QRY.COLUMNS;
		$('#Cities h3').text(local.qryCity.RecordCount + ' cities');
		local.arr = [];
		// bare metal loop
		for (var CurrentRow in local.qryCity.CITYID) {
			local.arr[CurrentRow] = '<li>'
			+ local.qryCity.CITYNAME[CurrentRow]
			+ '</li>';
		}
		// Now add it to the DOM
		$('#Cities ul').html(local.arr.join(''));
		$('#Cities ul').listview('refresh');
		// $('#State').trigger('pageshow'); 		
	}
})();
