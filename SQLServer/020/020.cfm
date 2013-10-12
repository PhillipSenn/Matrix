<cfquery name="qry">
SELECT 
TOP 11 WITH TIES * 
FROM dbo.TempState#session.ZenGardenSort#
WHERE Statehood IS NOT NULL
ORDER BY Statehood DESC
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>WITH TIES</h3>
Notice that while the select statement limits the rows to 11, the WITH TIES option produces 12 rows.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Row" text="#CurrentRow#">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="Statehood" text="#Statehood#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
