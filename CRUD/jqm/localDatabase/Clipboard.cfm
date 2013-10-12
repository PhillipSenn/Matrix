(function() {
	var Variables = {}; // Common to every function within this closure.
	CreateStateTable = function() {
		dbo.transaction(function(myTransaction) {
			var local = {};
			local.sqlite = "CREATE TABLE IF NOT EXISTS State("
				+ "StateID INTEGER PRIMARY KEY"
				+ ",StateName Varchar(128)"
				+ ",Statehood DateTime"
				+ ",isState Int"
				+ ",StateAbbr Varchar(2)"
				+ ",Population Int"
				+ ",State_DivisionID Int"
				+ ",LastModified DateTime"
				+ ",LastUploaded DateTime"
				+ ")";
			myTransaction.executeSql(
				 local.sqlite
				,[]
				,CountStates
				,window.localDatabaseError
			);
		});
	}
	CreateStateTable();
	
	CountStates = function() {
		dbo.transaction(function(myTransaction) {
			var local = {};
			local.sqlite = "SELECT * FROM State"; // todo: select count(*) from State. Actually we're going to need to upload and download changes.
			myTransaction.executeSql(
				 local.sqlite
				,[]
				,getStates
				,window.localDatabaseError
			);
		});
	};
	
	getStates = function(myTransaction, webSQLResult) {
		if (!webSQLResult.rows.length) { // If there are no rows in the State table
			var local = {};
			local.data = {};
			local.data.method = 'Where'; // Then select * from State table on the server
			// local.dataType = 'json';
			local.Promise = $.ajax('State.cfc',local);
			local.Promise.done(getStatesDone);
			local.Promise.fail(window.ajaxPromiseFail);
		} else {
			$.mobile.changePage('#StatesSection');
		}
	}
	
	getStatesDone = function(ajaxResult) {
		if (ajaxResult.MSG) {
			$(this).closest('header').text(ajaxResult.MSG);
		} else {
			Variables.qryState = ajaxResult.QRY.DATA; // Insert into State all the rows from the server
			for (var currentRow=0;currentRow < ajaxResult.QRY.ROWCOUNT;currentRow++) {
				InsertIntoState(currentRow);
			};
		}
		$.mobile.changePage('#StatesSection');
	}
	
	InsertIntoState = function(currentRow) {
		dbo.transaction(function(myTransaction) {
			var local = {};
			local.sqlite = "insert into State(StateID,StateName,Statehood,isState,StateAbbr,State_DivisionID,Population,LastModified,LastUploaded) VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9)"
			local.myDateTime = new Date();
			local.Statehood = new Date(Variables.qryState.STATEHOOD[currentRow]);
			myTransaction.executeSql(
				local.sqlite,[
				 Variables.qryState.STATEID[currentRow] // 1 Uppercase 
				,Variables.qryState.STATENAME[currentRow] // 2 Uppercase
				,local.Statehood // 3
				,(Variables.qryState.ISSTATE[currentRow]) ? 1 : 0 // 4 Uppercase
				,Variables.qryState.STATEABBR[currentRow] // 5 Uppercase
				,Variables.qryState.STATE_DIVISIONID[currentRow] // 6 Uppercase
				,Variables.qryState.POPULATION[currentRow] // 7 Uppercase
				,local.myDateTime // 8
				,local.myDateTime // 9
				]
				,StateDownloaded
				,window.localDatabaseError
			)
		});
	}
	
	StateDownloaded = function() {
	}
})();



(function() {
	$(document).on('click','#Save',function() {
		dbo.transaction(UpdateState);
	});
	
	var UpdateState = function(myTransaction) {
		var local = {};
		local.sqlite = "UPDATE State SET StateName=?1"
			+ ",isState=?2"
			+ ",LastModified=?3"
			+ "WHERE StateID =?4";
		local.LastModified = new Date();
		myTransaction.executeSql(
			 local.sqlite
			,[
				 DOM.StateName.val() // 1
				,DOM.isState.val() // 2
				,local.LastModified // 3
				,DOM.StateID.val() // 4
			]
			,StateSavedLocally
			,window.localDatabaseError
		);
	}
	
	var StateSavedLocally = function(myTransaction, webSQLResult) {
		$('ul#StatesUL a').each(function(index, element) {
			var local = {};
			local.StateID = $(this).data('stateid');
			if (local.StateID == DOM.StateID.val()) {
				$(this).text(DOM.StateName.val());
			}
		});
		if (+DOM.onLine[0].value) {
			Sync.Upload1();
		}
	};
})();
