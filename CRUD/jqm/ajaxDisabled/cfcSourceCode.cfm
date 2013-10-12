<cfset myDir = ExpandPath("/Matrix/com")>
<cfset myFile = FileRead(myDir & "/State.cfc")>
<cfset request.jqm.header = "cfc Source code">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>