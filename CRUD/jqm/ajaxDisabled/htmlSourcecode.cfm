<cfset request.jqm.header = "html.cfm Source code">
<cfset myDir = ExpandPath("/Library/jqm")>
<cfset myFile = FileRead(myDir & "/html.cfm")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>