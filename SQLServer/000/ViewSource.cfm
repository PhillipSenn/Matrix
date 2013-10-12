<cfoutput>
<cfset myPath = FindNoCase("SQLZenGarden/",cgi.HTTP_REFERER)>
<cfset myPath = Mid(cgi.HTTP_REFERER,myPath,99)>
<cfif myPath EQ "">
	<cfdump var="#CGI.HTTP_REFERER#">
	<cfabort>
</cfif>
<cfset myPath = ListGetAt(myPath,1,"?")>
<cfif Right(myPath,4) EQ ".cfm">
	<cfset myFile = ExpandPath("/#myPath#")>
<cfelse>
	<cfset myFile = ExpandPath("/#myPath#Index.cfm")>
</cfif>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View Source</title>
</head>
<body>
<cftry>
	<cffile variable="myContent" file="#myFile#" action="read">
	<cfcatch>
		Couldn't open #myFile#.
		<cfabort>
	</cfcatch>
</cftry>
<cfset myContent = ReplaceNoCase(myContent,"<","&lt;","all")>
<cfset myContent = ReplaceNoCase(myContent,Chr(9),"   ","all")>
<cfset myContent = ReplaceNoCase(myContent,"#Application.Datasource#","MyDataSource","all")>
<pre>
#myContent#
</pre>
</body></html></cfoutput>


