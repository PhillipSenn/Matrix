window.dbo = openDatabase('Matrix', '1.0', 'State and City tables in local storage', 5 * 1024 * 1024); // 5MB

function onCleanSlate() {
	var Variables = {};
	Variables.StateDeferred = $.Deferred();
	Variables.CityDeferrred = $.Deferred();
	
	$(document).on('click','#CleanSlate',CleanSlate);
	function CleanSlate() {
		dbo.transaction(DropTables);
	}
	function DropTables(myTransaction) {
		var local = {};
		local.sqlite = "DROP TABLE IF EXISTS State";
		myTransaction.executeSql(
			 local.sqlite
			 ,[]
			 ,StateDropped
		);
		local.sqlite = "DROP TABLE IF EXISTS City";
		myTransaction.executeSql(
			 local.sqlite
			 ,[]
			 ,CityDropped
		);
	};
	function StateDropped() {
		Variables.StateDeferred.resolve();
	}
	function CityDropped() {
		Variables.CityDeferrred.resolve();
	}
	$.when(
		 Variables.StateDeferred
		,Variables.CityDeferrred
	).done(  TablesDropped);
	function TablesDropped() {
		alert('Both State and City tables have been dropped.');
	}
};
onCleanSlate();



function init() {
	var Variables = {}; // Common to every function within this closure.
	dbo.transaction(CreateState)
	function CreateState(myTransaction) {
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
			,StateCreated
		);
	};
	
	function StateCreated() {
		dbo.transaction(SelectState);
	}
	function SelectState(myTransaction) {
		var local = {};
		local.data = {};
		local.data.method = 'Where'; // SELECT * FROM State on the server
		local.Promise = $.ajax('State.cfc',local)
			.done(StateSelected)
			.fail(StateFail);
	}
	function StateSelected(A,B,C) {
		debugger;
	}
	function StateFail(A,B,C) {
		debugger;
	}
};
init();

