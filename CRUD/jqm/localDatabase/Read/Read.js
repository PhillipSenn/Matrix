window.dbo = openDatabase('Matrix', '1.0', 'Web SQL Database', 5 * 1024 * 1024); // 5MB
request.dom.StatesListView = $('#StatesListView');

function Read() {
	dbo.transaction(SelectState);

	function SelectState(SQLTransaction) {
		var local = {};
		local.sqlite = "select * from State order by StateName";
		SQLTransaction.executeSql(
			 local.sqlite
			 ,[]
			 ,StateSelected // After you're done with this command, call this function.
		);
	}
	
	function StateSelected(SQLTransaction,SQLResultSet) {
		var local = {};

		for (local.index=0; local.index < SQLResultSet.rows.length; local.index++) {
			local.StateID = SQLResultSet.rows.item(local.index).StateID;
			local.StateName = SQLResultSet.rows.item(local.index).StateName;
			local.li = '<li><a href="#State" data-stateid="' + local.StateID + '">' + local.StateName + '</a></li>';
			request.dom.StatesListView.append(local.li);
		}
		request.dom.StatesListView.listview('refresh');
	}

};
Read();
