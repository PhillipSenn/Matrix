<cfset request.jqm.header = "body.cfm Source code">
<cfset myDir = ExpandPath("/Library/Inc")>
<cfset myFile = FileRead(myDir & "/body.cfm")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>