component {
this.name = "Matrix";
this.datasource = "PhillipSenn_Matrix";
this.currentTemplatePath = getCurrentTemplatePath();
include "/Library/Inc/onApplication10.cfm";

if (FindNoCase('Matrix\jqm\',this.BaseTemplateDir)) {
	this.mappings["/Inc"] = "C:\inetpub\wwwroot\PhillipSenn\Matrix\jqm\Inc\";
// } else if (FindNoCase('Matrix\Bootstrap3\',this.BaseTemplateDir)) {
//	this.mappings["/Inc"] = "C:\inetpub\wwwroot\PhillipSenn\Matrix\Bootstrap3\Inc\";
} else if (FindNoCase('Matrix\FontAwesome\',this.BaseTemplateDir)) {
	this.mappings["/Inc"] = "C:\inetpub\wwwroot\PhillipSenn\Matrix\FontAwesome\Inc\";
} else {
	this.mappings["/Inc"] = "C:\inetpub\wwwroot\PhillipSenn\Matrix\Inc\";
}

public boolean function onApplicationStart() {
	include "/Library/Inc/onApplicationStart10.cfm";
	
	Application.home.dir =  "/Matrix/";
	Application.home.src = Application.home.dir;
	return true;
}

public void function onSessionStart() {
	include "/Library/Inc/onSessionStart10.cfm";
}

public boolean function onRequestStart(String targetPage){
	onApplicationStart();
	request.cache = 'cache=' & DateTimeFormat(Now(),"yyyymmddhhnnsslll");
	request.Modernizr = false;
	request.Bootstrap = {};
	request.Bootstrap.Container = false;
	request.Bootstrap.navbar = "navbar-fixed-top"; // none | navbar-fixed-top | navbar-fixed-bottom | navbar-static-top | ""
	request.msg = '';

	// matrix/jqm:
	request.jqm.AjaxEnabled = false;
	request.jqm.Title = "jQuery Mobile Matrix";
	request.jqm.Header = request.jqm.Title;
	return true;
}
}
