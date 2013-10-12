<cfset result = session.State.REMOTE_Read(session.TDD.StateID)>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This return value is used by ajax calls, and has three fields in it.
<ol>
	<li>The first one is called "MSG", and is used in case there is an error.</li>
	<li>The second one, PREFIX, is not used, but you can see that it's the meta data that was once found in the query structure.</li>
	<li>The third one is the query itself, converted into a JSON string because url.returnformat = "json".</li>
</ol>
The column names are always in ALL CAPS, url.queryformat = "column", so I've started using variable names in ALL CAPS when handling these return values.
Not everwhere - just whenever we're working with the query coming back from the server.


<cfdump var="#result#">
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
