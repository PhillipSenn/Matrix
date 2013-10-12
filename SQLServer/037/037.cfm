<cftry>
	<cfquery>
	DROP TABLE dbo.TempState#session.ZenGardenSort#
	</cfquery>
	<cfcatch>
	</cfcatch>
</cftry>
<cfquery name="qry">
SELECT * 
INTO dbo.TempState#session.ZenGardenSort#
FROM dbo.ZenGardenState;
SELECT * FROM dbo.TempState#session.ZenGardenSort#
JOIN dbo.Division
ON State_DivisionID = DivisionID
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example drops a temporary table and then creates it using an Insert command.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Abbr" text="#StateAbbr#">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="isState" text="#isState#">
	<cfcol header="Statehood" text="#DateFormat(Statehood)#">
	<cfcol header="StateMap" text="#StateMap#">
	<cfcol header="Population" text="#NumberFormat(Population)#" align="right">
	<cfcol header="DivisionName" text="#DivisionName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
