component {
url._cf_nodebug=true;
url.returnformat = "json";
url.queryformat = "column";

remote function getCities(StateID) {
	local.result = {};
	local.result.MSG = "";
	local.svc = new query();
	local.svc.addParam(value=arguments.StateID,cfsqltype="cf_sql_integer");
	local.svc.setSQL("SELECT CityID,CityName
		FROM City"
		& " WHERE City_StateID = ?
		ORDER BY CityName
	");
	local.svc.setName = "qry";
	local.obj = local.svc.execute();
	local.result.QRY = local.obj.getResult();
	return local.result;
}
}
