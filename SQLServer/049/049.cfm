<cfquery name="qry">
SELECT DivisionName
,Sum(Population) AS Sum
,Avg(Population) AS Avg
,Min(Population) AS Min
,Max(Population) AS Max
,StDevP(Population) as StDevp
,Varp(Population) as Varp
,Count(Population) AS Count
FROM dbo.TempState#session.ZenGardenSort#
JOIN dbo.Division
ON State_DivisionID = DivisionID
WHERE Population > 0
GROUP BY DivisionName
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="DivisionName" text="#DivisionName#">
	<cfcol header="Sum" text="#Numberformat(Sum)#" align="right">
	<cfcol header="Avg" text="#Numberformat(Avg)#" align="right">
	<cfcol header="Min" text="#Numberformat(Min)#" align="right">
	<cfcol header="Max" text="#Numberformat(Max)#" align="right">
	<cfcol header="Std Dev" text="#Numberformat(StDevp)#" align="right">
	<cfcol header="Variance" text="#Numberformat(Varp)#" align="right">
	<cfcol header="Count" text="#Numberformat(Count)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/end.cfm">