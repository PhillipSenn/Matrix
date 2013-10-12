<cfquery name="qryPivot">
SELECT CASE GROUPING(StateName)
WHEN 0 THEN StateName
ELSE 'All States'
END AS StateName
,SUM(CASE WHEN DivisionName='East North Central' THEN Population ELSE 0 END) AS EastNorthCentral
,SUM(CASE WHEN DivisionName='East South Central' THEN Population ELSE 0 END) AS EastSouthCentral
,SUM(CASE WHEN DivisionName='Middle Atlantic' THEN Population ELSE 0 END) AS MiddleAtlantic
,SUM(CASE WHEN DivisionName='Mountain' THEN Population ELSE 0 END) AS Mountain
,SUM(CASE WHEN DivisionName='New England' THEN Population ELSE 0 END) AS NewEngland
,SUM(CASE WHEN DivisionName='Pacific' THEN Population ELSE 0 END) AS Pacific
,SUM(CASE WHEN DivisionName='South Atlantic' THEN Population ELSE 0 END) AS SouthAtlantic
,SUM(CASE WHEN DivisionName='West North Central' THEN Population ELSE 0 END) AS WestNorthCentral
,SUM(CASE WHEN DivisionName='West South Central' THEN Population ELSE 0 END) AS WestSouthCentral
FROM dbo.TempState#session.ZenGardenSort#
JOIN dbo.Division
ON State_DivisionID = DivisionID
WHERE DivisionName <> ''
GROUP BY ROLLUP(StateName)
ORDER BY COALESCE(StateName,'z')
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This is another way to pivot data.
<cftable query="qryPivot" colheaders="yes" htmltable="yes">
	<cfcol header="State" text="#StateName#">
	<cfcol header="East North Central" text="#NumberFormat(EastNorthCentral)#" align="right">
	<cfcol header="East South Central" text="#NumberFormat(EastSouthCentral)#" align="right">
	<cfcol header="Middle Atlantic" text="#NumberFormat(MiddleAtlantic)#" align="right">
	<cfcol header="Mountain" text="#NumberFormat(Mountain)#" align="right">
	<cfcol header="New England" text="#NumberFormat(NewEngland)#" align="right">
	<cfcol header="Pacific" text="#NumberFormat(Pacific)#" align="right">
	<cfcol header="South Atlantic" text="#NumberFormat(SouthAtlantic)#" align="right">
	<cfcol header="West North Central" text="#NumberFormat(WestNorthCentral)#" align="right">
	<cfcol header="West South Central" text="#NumberFormat(WestSouthCentral)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
