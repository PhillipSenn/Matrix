component {
this.name = "Matrix";
this.datasource = "PhillipSenn_Matrix";
this.currentTemplatePath = getCurrentTemplatePath();
include "/Library/Inc/onApplication10.cfm";

if (Find('Matrix\CRUD\Bootstrap2\',this.BaseTemplateDir)) {
	this.mappings["/Inc"] = this.BaseTemplateDir & "Inc\";
} else if (Find('Matrix\CRUD\jqm\',this.BaseTemplateDir)) {
	this.mappings["/Inc"] = "C:\inetpub\wwwroot\PhillipSenn\Matrix\CRUD\jqm\Inc\";
} else if (Find('Matrix\indexedDB\',this.BaseTemplateDir)) {
	this.mappings["/Inc"] = "C:\inetpub\wwwroot\PhillipSenn\Matrix\indexedDB\Inc\";
} else if (Find('Matrix\jqm\',this.BaseTemplateDir)) {
	this.mappings["/Inc"] = "C:\inetpub\wwwroot\PhillipSenn\Matrix\jqm\Inc\";
}

public boolean function onApplicationStart() {
	include "/Library/Inc/onApplicationStart10.cfm";
	
	Application.home.dir =  "/Matrix/";
	if (!StructKeyExists(Application,"UsrID")) {
		Application.UsrID = 0;
	}
	Application.City = CreateObject("component","Matrix.com.City").init();
	Application.Division = CreateObject("component","Matrix.com.Division").init();
	Application.Source = CreateObject("component","Matrix.com.Source").init();
	Application.qryDivision = Application.Division.Where();
	return true;
}

public void function onSessionStart() {
	include "/Library/Inc/onSessionStart10.cfm";
	if (StructKeyExists(session,"qry")) {
		if (StructKeyExists(session.qry,"UsrID")) {
			session.State = CreateObject("component","Matrix.com.State").init(session.qry.UsrID); 
		}
	}
	if (!StructKeyExists(session,"TDD")) {
		session.TDD = {};
		session.TDD.StateID = 0; // This is updated when a new state is inserted during Test Driven Development.
	}
}

public boolean function onRequestStart(String targetPage){
	include "/Library/Inc/onRequestStart10.cfm";
	if (!StructKeyExists(session,"qry")) {
		if (FindNoCase('googlebot',cgi.HTTP_USER_AGENT)) {
			local.UsrID = 101;
		} else if (StructKeyExists(cookie,"UsrID")) {
			local.UsrID = cookie.UsrID;
		} else {
			lock scope="application" timeout="5" type="exclusive" {
				Application.UsrID = (Application.UsrID % 20) + 1;
				local.UsrID = Application.UsrID;
			}
			cookie.UsrID = {value:local.UsrID,expires:"never"};
		}
		session.qry = QueryNew("UsrID","Integer",[
			[local.UsrID]
		]);
		session.State = CreateObject("component","Matrix.com.State").init(local.UsrID);
		session.State.Reset();
		session.qryState = session.State.getStatesAndCountCities();
	}

	request.js.jQuery = 2;
	return true;
}
}
