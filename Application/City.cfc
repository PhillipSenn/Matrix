component {
function Init() {
	return this;
}

function Where(FK,ID) {
	local.sql = "
		SELECT CityID,CityName
		FROM City
		WHERE #arguments.FK# = ?
	";
	local.svc = new query();
	local.svc.setSQL(local.sql);
	local.svc.addParam(value=arguments.ID,cfsqltype="cf_sql_integer");
	local.obj = local.svc.execute();
	local.result = local.obj.getRESULT();
	return local.result;
}

REMOTE function REMOTE_WhereStateID(StateID) {
	url.returnformat = "json";
	url.queryformat = "column";
	
	local.RESULT = {};
	local.RESULT.MSG = "";
	local.RESULT.QRY = Where("City_StateID",arguments.StateID);
	return local.RESULT;
}

}