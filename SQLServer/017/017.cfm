<cfquery name="qry">
SELECT A.StateName AS AStateName,B.StateName AS BStateName
FROM dbo.TempState#session.ZenGardenSort# A
CROSS JOIN
dbo.TempState#session.ZenGardenSort# B
WHERE A.isState=1 AND B.isState=1
ORDER BY B.StateName,A.StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>CROSS JOIN</h3>
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Row" text="#CurrentRow#">
	<cfcol header="State" text="#AStateName#">
	<cfcol header="State" text="#BStateName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
