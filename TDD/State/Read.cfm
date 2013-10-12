<cfset qryState = session.State.Read(session.TDD.StateID)>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
Here, we get a query back, which includes whether it was cached or not, the execution time and the sql statement,
along with the parameters.
<cfdump var="#qryState#">
<p>qryState.Recordcount: #qryState.RecordCount#</p>
We could get the same info from the getPrefix() method:
<cfdump var="#request.Prefix#">

<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>