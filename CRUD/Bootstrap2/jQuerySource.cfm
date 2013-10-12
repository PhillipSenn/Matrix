<cfset request.jqm.header = "jQuery.cfm Source code">
<cfset myDir = ExpandPath("/Library/Inc")>
<cfset myFile = FileRead(myDir & "/jQuery.cfm")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>