<cfscript>
Rowcount = session.State.REMOTE_DELETE(session.TDD.StateID);
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
#session.TDD.StateID# has been deleted.
<br>#RowCount# rows affected.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>