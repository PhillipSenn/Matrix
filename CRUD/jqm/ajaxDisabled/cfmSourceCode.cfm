<cfset request.jqm.header = "cfm Source code">
<cfset myDir = ExpandPath(".")>
<cfset myFile = FileRead(myDir & "/State.cfm")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>