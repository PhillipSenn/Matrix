<cfset X = CreateObject("component","Matrix.jqm.com.Source").CFM(cgi.HTTP_REFERER)>
<cfoutput>
<cfinclude template="/Library/Inc/html.cfm">
<cfinclude template="/Library/Inc/body.cfm">
<pre>#X#
</pre>
<cfinclude template="/Library/Inc/foot.cfm">
<cfinclude template="/Library/Inc/End.cfm">
</cfoutput>