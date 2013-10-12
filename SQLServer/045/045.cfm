<cfif StructKeyExists(form,"Update")>
	<cfquery name="qry">
	UPDATE dbo.TempState#session.ZenGardenSort# SET
	StateName = ZenGardenState.StateName
	FROM dbo.TempState#session.ZenGardenSort#
	JOIN ZenGardenState
	ON dbo.TempState#session.ZenGardenSort#.StateID = ZenGardenState.StateID
	</cfquery>
</cfif>
<cfquery name="qry">
SELECT *
FROM dbo.TempState#session.ZenGardenSort#
ORDER BY StateName
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example will update <cfoutput>dbo.TempState#session.ZenGardenSort#</cfoutput>, setting the StateName back to the original from ZenGardenState.<br>
You can change the names of the states using one of my <a href="/CFMZenGarden">CFM Zen Garden</a> examples.
<cfform>
	<cfinput name="Update" type="submit" value="Click here to update">
</cfform>
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateID" text="#StateID#">
	<cfcol header="StateName" text="#StateName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
