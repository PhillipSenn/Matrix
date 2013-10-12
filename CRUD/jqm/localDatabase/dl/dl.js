window.dbo = openDatabase('Matrix', '1.0', 'State and City tables in local storage', 5 * 1024 * 1024); // 5MB
request.dom.States = $('#States');

function init() {
	var Variables = {}; // Common to every function within this closure.

	$(document).on('click','#CleanSlate',CleanSlate);
	function CleanSlate() {
		dbo.transaction(DropState);
	}
	function DropState(SQLTransaction) {
		var local = {};
		local.sqlite = "DROP TABLE IF EXISTS State";
		SQLTransaction.executeSql(
			 local.sqlite
			 ,[]
			 ,StateDropped // After you're done with this command, call this function back.
		);
	};
	function StateDropped() {
		dbo.transaction(CreateState)
	}
	function CreateState(SQLTransaction) {
		var local = {};
		local.sqlite = "CREATE TABLE IF NOT EXISTS State("
			+ "StateID INTEGER PRIMARY KEY"
			+ ",StateName Varchar(128)"
			+ ",Statehood DateTime"
			+ ",isState Int"
			+ ",StateAbbr Varchar(2)"
			+ ",Population Int"
			+ ",State_DivisionID Int"
			+ ",LastUpdated  DateTime"
			+ ",LastUploaded DateTime"
			+ ")";
		SQLTransaction.executeSql(
			 local.sqlite
			,[]
			,StateCreated // After you're done with this command, call this function back.
		);
	};
	
	function StateCreated() {
		var local = {};
		local.data = {};
		local.data.method = 'Remote_Where'; // SELECT * FROM State on the server
		local.Promise = $.ajax('/Matrix/com/State.cfc',local)
			.done(StateSelected) // When you're done, call this function.
			.fail(ajaxSelectFailed);
	}
	function StateSelected(RESULT,B,C) {
		var local = {};
		local.qry = {};
		
		Variables.qry = RESULT.QRY.DATA;
		Variables.RowCount = RESULT.QRY.ROWCOUNT;
		request.dom.States.text(RESULT.QRY.ROWCOUNT);
		dbo.transaction(InsertAllStates)
	}
	function InsertAllStates(SQLTransaction) {
		var local = {};
		
		for (local.index=0; local.index<Variables.RowCount; local.index++) {
			local.sqlite = "INSERT INTO State"
				+ "(StateID,StateName,Statehood,isState,StateAbbr,Population,State_DivisionID,LastUpdated)"
				+ " VALUES(?1,?2,?3,?4,?5,?6,?7,?8)"
			SQLTransaction.executeSql(
				 local.sqlite
				,[
				 Variables.qry.STATEID[local.index] // Uppercase field name
				,Variables.qry.STATENAME[local.index] // Uppercase field name
				,Variables.qry.STATEHOOD[local.index] // Uppercase field name
				,Variables.qry.ISSTATE[local.index] // Uppercase field name
				,Variables.qry.STATEABBR[local.index] // Uppercase field name
				,Variables.qry.POPULATION[local.index] // Uppercase field name
				,Variables.qry.DIVISIONID[local.index] // Uppercase field name
				,Variables.qry.LASTUPDATED[local.index] // Uppercase field name
				]
				,StateInserted
				,InsertFailed
			);
		}
	}
	function StateInserted(SQLTransaction,SQLResultSet) {
		var local = {};
		
		local.States = request.dom.States.text();
		request.dom.States.text(local.States-1);
	}

	function ajaxSelectFailed(A,B,C) {
		$('.msg').html(A.responseText);
	}
	function InsertFailed(SQLTransaction,SQLError) {
		$('.msg').html('<h1>SQLError.message</h1>');
	}
};
init();

