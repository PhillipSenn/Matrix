component {

function init(UsrID) {
	Variables.UsrID = arguments.UsrID; // With the Matrix series, every session has a unique UsrID that goes to a unique table (State1 - State20).
	return this;
}

function Reset() {
	local.sql = "TRUNCATE TABLE State#Variables.UsrID#";
	local.svc = new query();
	local.svc.setDatasource("MatrixSave");
	local.svc.setSQL(local.sql);
	local.svc.execute();

	local.sql = "
	SET IDENTITY_INSERT State#Variables.UsrID# ON
	INSERT INTO State#Variables.UsrID#(StateID,StateName,isState,Statehood,StateAbbr,State_DivisionID,Population,StateMap)
	SELECT StateID,StateName,isState,Statehood,StateAbbr,State_DivisionID,Population,StateMap
	FROM State;
	SET IDENTITY_INSERT State#Variables.UsrID# OFF
	";
	local.svc.setSQL(local.sql);
	local.svc.execute();
}

function Read(StateID) {
	local.sql = "
		SELECT *
		FROM State#Variables.UsrID#View
		WHERE StateID = ?
	";
	local.svc = new query();
	local.svc.setSQL(local.sql);
	local.svc.addParam(value=arguments.StateID,cfsqltype="CF_SQL_INTEGER");
	local.obj = local.svc.execute();
	local.qry = local.obj.getResult();
	request.Prefix = local.obj.getPrefix();
	return local.qry;
}

function Where(FK,ID) {
	local.svc = new query();
	local.sql = "
		SELECT *
		FROM State#Variables.UsrID#View
	";
	if (StructKeyExists(arguments,"FK") AND StructKeyExists(arguments,"ID")) {
		local.sql += "	WHERE #arguments.FK# = ?";
		local.svc.addParam(value=arguments.ID,cfsqltype="CF_SQL_INTEGER");
	}
	local.sql = local.sql & " ORDER BY StateName";
	local.svc.setSQL(local.sql);
	local.obj = local.svc.execute();
	request.Prefix = local.obj.getPrefix();
	return local.obj.getResult();
}

function Delete(StateID) {
	try {
		request.rtn = true;
		local.sql = "
			DELETE
			FROM State#Variables.UsrID#
			WHERE StateID = ?;
			SELECT @@RowCount AS Deleted
		";
		local.svc = new query();
		local.svc.setSQL(local.sql);
		local.svc.addParam(value=arguments.StateID,cfsqltype="CF_SQL_INTEGER");
		local.svc.setDatasource("MatrixSave"); // The default datasource doesn't have Insert/Update/Delete rights.
		local.obj = local.svc.execute();
		local.qry = local.obj.getResult();
	} catch(any cfcatch) {
		request.msg = Error(cfcatch);
		request.rtn = false;
		return 0;
	}
	return local.qry.Deleted;
}

function getStatesAndCountCities() {
	local.sql = "
		SELECT StateView.*
		,isNull(Cities,0) AS Cities
		FROM State#Variables.UsrID#View StateView
		LEFT JOIN (
			SELECT City_StateID
			,Count(*) AS Cities
			FROM City
			GROUP BY City_StateID
		) City
		ON City_StateID = StateID
		ORDER BY StateName
	";
	local.svc = new query();
	local.svc.setSQL(local.sql);
	local.obj = local.svc.execute();
	local.qry = local.obj.getResult();
	return local.qry;
}

function Save(form) { // Here the structure being passed in is called "form" out of convenience.  You can say that it was "inspired by" the form scope.
	request.rtn = true; // This is used by the .cfm page to determine if it should return back to the main page.
	local.svc = new query();

	if (StructKeyExists(form,"isState")) {
		local.isState = 1;
	} else {
		local.isState = 0;
	}
	if (StructKeyExists(form,"StateID") AND Val(form.StateID)) {
		local.sql = "
			DECLARE @StateID Int = #Val(form.StateID)#;
			UPDATE State#Variables.UsrID# SET
			StateName = :StateName
			,isState   = :isState
			,Statehood = :Statehood
			,StateAbbr = :StateAbbr
			,Population= :Population
			,State_DivisionID = :DivisionID
			,LastUpdated = getdate()
			WHERE StateID = @StateID;
			SELECT StateID,StateName
			FROM State#Variables.UsrID#
			WHERE StateID = @StateID;
		";
		// It didn't take :StateID when used twice in the string, or even once when used with the DECLARE stmt.
		// I finally just put it directly into the SQL string.
		// local.svc.addParam(name="StateID",value="#form.StateID#",cfsqltype="cf_sql_integer"); 
	} else {
		local.sql = "
			INSERT INTO State#Variables.UsrID#(StateName,isState,Statehood,StateAbbr,Population,State_DivisionID) VALUES
			(:StateName
			,:isState
			,:Statehood
			,:StateAbbr
			,:Population
			,:DivisionID
			);
			SELECT StateID
			FROM State#Variables.UsrID#
			WHERE StateID = Scope_Identity();
		";
	}
	try {
		local.svc.setSQL(local.sql);
		local.svc.addParam(name="StateName" ,value="#form.StateName#" ,cfsqltype="cf_sql_varchar"); 
		local.svc.addParam(name="isState"   ,value="#local.isState#"  ,cfsqltype="cf_sql_integer"); 
		local.svc.addParam(name="Statehood" ,value="#form.Statehood#" ,cfsqltype="cf_sql_varchar"); 
		local.svc.addParam(name="StateAbbr" ,value="#form.StateAbbr#" ,cfsqltype="cf_sql_varchar"); 
		local.svc.addParam(name="Population",value="#form.Population#",cfsqltype="cf_sql_integer"); 
		local.svc.addParam(name="DivisionID",value="#form.DivisionID#",cfsqltype="cf_sql_integer"); 
		local.svc.setDatasource("MatrixSave");
		local.obj = local.svc.execute();
	} catch(any cfcatch) {
		request.msg = Error(cfcatch);
		request.rtn = false;
		return;
	}
	// request.Prefix = local.obj.getPrefix();
	return local.obj.getResult(); 
	// Reason for SELECT StateID,StateName in the update statement is for ajaxEnabled.cfm.
	// Reason for SELECT StateID in the insert statement is because it will be stored in the session scope during Test Driven Development.
}

REMOTE function REMOTE_Save( // One of the few places where I've allowed underscores to creep into my naming.
	 StateID
	,StateName
	,isState
	,Statehood
	,StateAbbr
	,Population
	,DivisionID
) {
	url.returnformat = "json"; // REMOTE
	url.queryformat = "column"; // REMOTE
	Variables.UsrID = session.qry.UsrID;
	local.RESULT = {};
	local.RESULT.MSG = "";

	local.RESULT.QRY = Save(arguments);
	// local.RESULT.PREFIX = request.Prefix;
	return local.RESULT;
}

REMOTE function REMOTE_Read(StateID) {
	url.returnformat = "json"; // REMOTE
	url.queryformat = "column"; // REMOTE
	Variables.UsrID = session.qry.UsrID;

	local.RESULT = {};
	local.RESULT.MSG = "";
	local.RESULT.QRY = Read(StateID);
	local.RESULT.PREFIX = request.Prefix;
	return local.RESULT;
}

REMOTE function REMOTE_Where(FK,ID) {
	url.returnformat = "json"; // REMOTE
	url.queryformat = "column"; // REMOTE
	Variables.UsrID = session.qry.UsrID;

	local.RESULT = {};
	local.RESULT.MSG = "";
	local.RESULT.QRY = Where();
	local.RESULT.PREFIX = request.Prefix;
	return local.RESULT;
}

REMOTE function REMOTE_Delete(StateID) {
	Variables.UsrID = session.qry.UsrID;
	url.returnformat = "json"; // REMOTE
	url.queryformat = "column"; // REMOTE
	local.Rowcount = Delete(arguments.StateID);
	return local.Rowcount;
}

function Error(form) {
	local.result = arguments.form.Detail;
	local.result = Replace(local.result,"[Macromedia]","","all");
	local.result = Replace(local.result,"[SQLServer JDBC Driver]","","all");
	local.result = Replace(local.result,"[SQLServer]","","all");
	if (FindNoCase("The DELETE statement conflicted with the REFERENCE constraint",local.result)) {
		local.result = "There are records that depend on this entry.  They need to be deleted first.";
	} else if (local.result EQ "") {
		local.result = arguments.form.Message;
		local.result = Replace(local.result,"The cause of this output exception was that:","","all");
		local.result = Replace(local.result,"coldfusion.runtime.locale.CFLocaleBase$InvalidDateTimeException:","","all");
		local.result = Replace(local.result,"..",".","all");
	}
	if (local.result EQ "") {
		local.result = "An unknown error has occurred.";
	}
	return local.result;
}
}