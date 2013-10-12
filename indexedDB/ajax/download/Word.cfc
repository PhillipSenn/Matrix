component {
url.returnformat = "json";
url.queryformat = "column";

remote function SelectAll() {
	local.result = {};
	local.result.MSG = ""; // try catch
	local.svc = new query();
	local.svc.setSQL("SELECT WordName,Noun,Verb,Adv,Adj,Strong,Weak FROM Word ORDER BY WordID");
	local.svc.setName = "qry";
	local.obj = local.svc.execute();
	local.result.QRY = local.obj.getResult();
	return local.result;
}

}
