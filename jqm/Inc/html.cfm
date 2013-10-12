<cfscript>
param name="request.jqm.title" default="jQuery Mobile Matrix";
</cfscript>

<cfoutput>
<cfinclude template="/Library/jqm/html.cfm">
<link rel="stylesheet" href="#Application.home.dir#jqm/css/jqm.css">
</cfoutput>
<!---
<title>#request.jqm.title#</title>');
myFileName = GetFileFromPath(cgi.SCRIPT_NAME);
myFileName = ListFirst(myFileName,'.');
myPath = GetDirectoryFromPath(cgi.SCRIPT_NAME);
myPath = ExpandPath(myPath);
myJavaScript = '';
--->
<!---
try {
	myJavaScript = fileRead(myPath & myFileName & ".js");
	myJavaScript = Replace(myJavaScript,Chr(9),'   ','all');
	catch(any e) {
		myJavaScript = '';
	}
}
--->
