<cfset request.jqm.header = "Application.cfc Source code">
<cfset myDir = ExpandPath("/Matrix")>
<cfset myFile = FileRead(myDir & "/Application.cfc")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>