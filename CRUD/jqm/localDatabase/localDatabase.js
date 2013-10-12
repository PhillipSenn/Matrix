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
			 ,StateDropped
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
			,StateCreated
		);
	};
	
	function StateCreated() {
		var local = {};
		local.data = {};
		local.data.method = 'Where'; // SELECT * FROM State on the server
		local.Promise = $.ajax('State.cfc',local)
			.done(StateSelected)
			.fail(SelectFailed);
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
		
		for (local.i=0; local.i<Variables.RowCount; local.i++) {
			local.sqlite = "INSERT INTO State"
				+ "(StateID,StateName,Statehood,isState,StateAbbr,Population,State_DivisionID,LastUpdated)"
				+ " VALUES(?1,?2,?3,?4,?5,?6,?7,?8)"
			SQLTransaction.executeSql(
				 local.sqlite
				,[
				 Variables.qry.STATEID[local.i] // Uppercase
				,Variables.qry.STATENAME[local.i] // Uppercase
				,Variables.qry.STATEHOOD[local.i] // Uppercase
				,Variables.qry.ISSTATE[local.i] // Uppercase
				,Variables.qry.STATEABBR[local.i] // Uppercase
				,Variables.qry.POPULATION[local.i] // Uppercase
				,Variables.qry.STATE_DIVISIONID[local.i] // Uppercase
				,Variables.qry.LASTUPDATED[local.i] // Uppercase
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

	function SelectFailed(A,B,C) {
		debugger;
	}
	function InsertFailed(SQLTransaction,SQLError) {
		$('.msg').html('<h1>SQLError.message</h1>');
	}
};
init();

