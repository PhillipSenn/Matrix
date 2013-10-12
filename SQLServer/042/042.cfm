<cfquery name="qry">
SELECT StateName,Case(StateID)
WHEN 101 THEN 'One oh One'
WHEN 102 THEN 'One oh Two'
WHEN 103 THEN 'One oh Three'
WHEN 104 THEN 'One oh Four'
WHEN 105 THEN 'One oh Five'
WHEN 106 THEN 'One oh Six'
WHEN 107 THEN 'One oh Seven'
WHEN 108 THEN 'One oh Eight'
WHEN 109 THEN 'One oh Nine'
END
AS StateNumber
FROM dbo.TempState#session.ZenGardenSort#
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example shows the CASE(X) statement.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="StateNumber" text="#StateNumber#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
