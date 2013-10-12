<cfquery name="qry">
SELECT * FROM dbo.TempState#session.ZenGardenSort#
<cfif StructKeyExists(form,"StateID")>
	WHERE StateID IN(<cfqueryparam cfsqltype="cf_sql_integer" list="yes" value="#form.StateID#">)
</cfif>
ORDER BY StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>IN()</h3>
<cfform preservedata="yes">
	Which State(s) would you like to see?
	<table>
		<cfloop query="qry">
			<tr>
			<td><cfinput name="StateID" type="checkbox" value="#StateID#" /></td>
			<td>#StateName#</td>
			</tr>
		</cfloop>
	</table>
	<cfinput name="OK" type="submit" value="OK">
</cfform>
<a href="#cgi.SCRIPT_NAME#">Start Over</a>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
