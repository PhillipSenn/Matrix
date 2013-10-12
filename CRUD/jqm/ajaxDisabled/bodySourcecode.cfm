<cfset request.jqm.header = "body.cfm Source code">
<cfset myDir = ExpandPath("/Library/jqm")>
<cfset myFile = FileRead(myDir & "/body.cfm")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
Don't freak out when you see so much source code.  The reality of all this logic is to just
supply sane defaults.
<p>Look at the html that this generates to see how simple it looks once created.</p>
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>