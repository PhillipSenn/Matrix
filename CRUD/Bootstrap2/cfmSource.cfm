<cfset request.jqm.header = "ColdFusion Source code">
<cfset myDir = ExpandPath(".")>
<cfset myFile = FileRead(myDir & "/Bootstrap2.cfm")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>