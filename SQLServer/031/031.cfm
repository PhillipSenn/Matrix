<cfquery name="qry">
SELECT 
CASE GROUPING(DivisionName)
WHEN 0 THEN DivisionName
ELSE '<strong>State SubTotal</strong>'
END AS DivisionName,
CASE GROUPING(StateName)
WHEN 0 THEN StateName
ELSE '<strong>Division SubTotal</strong>'
END AS StateName,
COUNT(*) AS Cities
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
JOIN dbo.Division
ON State_DivisionID = DivisionID
GROUP BY CUBE(DivisionName,StateName)
ORDER BY COALESCE(DivisionName,'z'),
	COALESCE(StateName,'z')
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example is a cube.<br>
It has subtotals for each Division and each State.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Row" text="#CurrentRow#">
	<cfcol header="DivisionName" text="#DivisionName#">
	<cfcol header="State" text="#StateName#">
	<cfcol header="Cities" text="#NumberFormat(Cities)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
