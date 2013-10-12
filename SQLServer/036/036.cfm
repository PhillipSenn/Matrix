<cfquery>
DROP PROC ListStates
</cfquery>
<cfquery name="qry">
CREATE PROC ListStates(
@isState Int=1
) AS
SET NOCOUNT ON;
INSERT INTO ZenGardenAudit DEFAULT VALUES
SELECT StateName FROM dbo.TempState#session.ZenGardenSort#
WHERE isState=@isState
RETURN
</cfquery>

<cfquery name="qry">
DECLARE @State Table(
StateID Int Identity Primary Key,
StateName Varchar(128)
)
INSERT INTO @State(StateName)
EXEC ListStates 1;
SELECT * FROM @State
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>This example creates a memory table and inserts data from dbo.TempState#session.ZenGardenSort# into it through the use of a stored procedure.</p>
<p>The advantage here is that the stored procedure also has an audit.</p>
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateID" text="#StateID#">
	<cfcol header="StateName" text="#StateName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
