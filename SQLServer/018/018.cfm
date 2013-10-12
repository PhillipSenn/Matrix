<cfquery name="qry">
SELECT A.StateName AS AStateName,A.Statehood AS AStatehood
,B.StateName AS BStateName,B.Statehood AS BStatehood
,Convert(Varchar,A.Statehood,101) AS AStatehood101
,Convert(Varchar,B.Statehood,101) AS BStatehood101
FROM dbo.TempState#session.ZenGardenSort# A
JOIN dbo.TempState#session.ZenGardenSort# B
ON A.Statehood >= B.Statehood
ORDER BY A.StateHood,A.StateName,B.StateHood,B.StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>&Theta; join</h3>
It's the State, followed by all the states that entered the union >= it's date of statehood.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Row" text="#CurrentRow#">
	<cfcol header="State" text="#AStateName#">
	<cfcol header="Statehood" text="#AStatehood101#">
	<cfcol header="State" text="#BStateName#">
	<cfcol header="Statehood" text="#BStatehood101#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
