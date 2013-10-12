<cfquery name="qry">
SELECT A.CityName,B.CityName AS ParentCity
,SA.StateName,SB.StateName as ParentState
FROM dbo.TempCity#session.ZenGardenSort# A
JOIN dbo.TempCity#session.ZenGardenSort# B
ON A.ParentID = B.CityID
JOIN dbo.TempState#session.ZenGardenSort# SA
ON A.City_StateID = SA.StateID
JOIN dbo.TempState#session.ZenGardenSort# SB
ON B.City_StateID = SB.StateID
WHERE A.ParentID <> 0
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>SELF JOIN</h3>
I populated a random list of cities to have 'Parent' cities.<br>
If you know of a list of bedroom communities, let me know.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="City" text="#CityName#">
	<cfcol header="State" text="#StateName#">
	<cfcol header="Parent City" text="#ParentCity#">
	<cfcol header="Parent State" text="#ParentState#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
