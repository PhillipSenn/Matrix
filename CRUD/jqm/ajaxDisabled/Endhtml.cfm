<cfset request.jqm.header = "The html that End.cfm creates">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>&lt;/body>
&lt;/html>
</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>