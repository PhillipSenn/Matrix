<cfquery name="qry">
DECLARE @State Table(
StateID Int Identity Primary Key,
StateName Varchar(128)
)
INSERT INTO @State(StateName)
SELECT StateName FROM dbo.TempState#session.ZenGardenSort#;
INSERT INTO @State(StateName) VALUES('StateName1'),('StateName2')
SELECT * FROM @State
ORDER BY StateID DESC
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example adds two more states to the table, using a single INSERT statement.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateID" text="#StateID#">
	<cfcol header="StateName" text="#StateName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
