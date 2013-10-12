<cfscript>
include "/Inc/html.cfm";
include "/Inc/body.cfm";
if (StructKeyExists(cookie,"UsrID")) {
	session.qry = QueryNew('UsrID','Integer',[	
	[cookie.UsrID]
	]);
	location("setSession.cfm",false);
} else if (FindNoCase('googlebot',cgi.HTTP_USER_AGENT)) {
	url.UsrID = 101;
} else if (!StructKeyExists(url,"UsrID")) {
	WriteOutput("url.UsrID not found.");
	abort;
} else if (Val(url.UsrID) < 1) {
	WriteOutput(url.UsrID & " < 1");
	abort;
} else if (url.UsrID == 101) {
} else if (url.UsrID > 20) {
	WriteOutput("Max of 20.");
	abort;
}
session.qry = QueryNew('UsrID','Integer',[
[url.UsrID]
]); // session.qry is usually the user's login info, but in our case it's only what UsrID they are.

myCookie = {};
myCookie.value = session.qry.UsrID;
myCookie.expires = "never";
cookie.UsrID = myCookie;

svc = new query();
sql = "
	SELECT *
	FROM State A
	LEFT JOIN State#session.qry.UsrID# B
	ON A.StateID = B.StateID
	WHERE A.StateName <> B.StateName
	OR A.Population <> B.Population
	OR A.Statehood <> B.Statehood
	OR A.StateAbbr <> B.StateAbbr
	OR A.State_DivisionID <> B.State_DivisionID
	OR A.isState <> B.isState
	OR A.StateMap <> B.StateMap
	OR B.StateID is null
";
svc.setSQL(sql);
obj = svc.execute();
Prefix = obj.getPrefix();
if (Prefix.Recordcount) {
	WriteOutput('
	There are #Prefix.Recordcount# differences between the base table and your table.
	<ul>
		<li><a href="Reset.cfm">Reset State#session.qry.UsrID# back to the base table</a></li>
		<li><a href="setSession.cfm">Continue without resetting</a></li>
	</ul>');
} else {
	location("setSession.cfm",false);
}
include "/Inc/foot.cfm";
include "/Inc/End.cfm";
</cfscript>