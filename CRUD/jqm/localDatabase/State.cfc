component {
url._cf_nodebug=true;
url.returnformat = "json";
url.queryformat = "column";

remote function Read(StateID) {
	local.result = {};
	local.result.MSG = "";
	local.svc = new query();
	local.svc.addParam(value=arguments.StateID,cfsqltype="cf_sql_integer");
	local.svc.setSQL("SELECT *
		,Convert(Varchar,Statehood,101) AS Statehood101
		FROM State" & session.qry.UsrID
		& " WHERE StateID = ?
	");
	local.svc.setName = "qry";
	local.obj = local.svc.execute();
	local.result.QRY = local.obj.getResult();
	return local.result;
}

remote function Where() {
	local.result = {};
	local.result.MSG = "";
	local.svc = new query();
	local.sql = "SELECT * FROM State" & session.qry.UsrID;
	// if (StructKeyExists(arguments,"FK") AND StructKeyExists(arguments,"ID")) {
	// 	local.sql += " WHERE " + FK + '=' + ID;
	// }
	local.sql = local.sql & " ORDER BY StateName";
	local.svc.setSQL(local.sql);
	local.svc.setName = "qry";
	local.obj = local.svc.execute();
	local.result.QRY = local.obj.getResult();
	return local.result;
}

/*
	,isState
	,Statehood
	,StateAbbr
	,Population
	,DivisionID
	local.svc.addParam(name="isState"   ,value="#arguments.isState#"   ,cfsqltype="cf_sql_integer"); 
	local.svc.addParam(name="Statehood" ,value="#arguments.Statehood#" ,cfsqltype="cf_sql_varchar"); 
	local.svc.addParam(name="StateAbbr" ,value="#arguments.StateAbbr#" ,cfsqltype="cf_sql_varchar"); 
	local.svc.addParam(name="Population",value="#arguments.Population#",cfsqltype="cf_sql_integer"); 
	local.svc.addParam(name="DivisionID",value="#arguments.DivisionID#",cfsqltype="cf_sql_integer"); 
	,isState   = :isState
	,StateAbbr = :StateAbbr
	,Population= :Population
	,State_DivisionID = :DivisionID
*/
remote function Save(
	 StateID
	,StateName
) {
	local.result = {};
	local.result.MSG = "";
	local.svc = new query();
	local.svc.setName = "qry";
	local.svc.addParam(name="StateName" ,value="#arguments.StateName#" ,cfsqltype="cf_sql_varchar"); 
	local.svc.addParam(name="StateID"   ,value="#arguments.StateID#"   ,cfsqltype="cf_sql_integer"); 
	local.sql = "UPDATE State#session.qry.UsrID# SET
	 StateName = :StateName
	,LastUpdated = getdate()
	WHERE StateID = :StateID
	SELECT *
	FROM State#session.qry.UsrID#
	WHERE StateID = :StateID
	";
	local.svc.setSQL(local.sql);
	local.obj = local.svc.execute();
	local.result.QRY = local.obj.getResult();
	return local.result;
}
}
