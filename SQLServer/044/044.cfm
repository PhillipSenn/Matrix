<cfquery name="qry">
SELECT StateID
FROM dbo.TempState#session.ZenGardenSort#
EXCEPT
SELECT DISTINCT City_StateID 
FROM dbo.TempCity#session.ZenGardenSort#
ORDER BY StateID
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example shows the EXCEPT operator.<br>
It is used to get all the states except the ones not in the city table.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateID" text="#StateID#">
</cftable>
<cfquery name="qry">
SELECT StateID,StateName
FROM dbo.TempState#session.ZenGardenSort#
LEFT OUTER JOIN dbo.TempCity#session.ZenGardenSort#
ON City_StateID = StateID
WHERE City_StateID IS NULL
ORDER BY StateName
</cfquery>
Here's the same query using NULL as the criteria.<br>
You can see that I can sort this one by StateName.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateID" text="#StateID#">
	<cfcol header="StateName" text="#StateName#">
</cftable>
I could probably use WHERE NOT IN() as well.<br>
Or WHERE NOT EXISTS.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/end.cfm">
