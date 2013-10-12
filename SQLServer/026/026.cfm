<cfif StructKeyExists(form,"Guess")>
	<cfquery name="qry">
	SELECT 'True' AS AllTest
	WHERE
	<cfqueryparam cfsqltype="cf_sql_integer" value="#form.Guess#">
	<= SOME(
		SELECT Population FROM dbo.TempState#session.ZenGardenSort#
		WHERE Population > 0
	)
	</cfquery>
</cfif>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfform preservedata="yes">
<h3>SOME (ANY)</h3>
<cfif StructKeyExists(form,"Guess")>
	<cfif qry.RecordCount>
		<h1>Higher</h1>
	<cfelse>
		<h1>Lower</h1>
		(The answer is 37253956 but I don't know what to do if you get it right).<br>
	</cfif>
</cfif>
What is the population of the most populated state:
<cfinput name="Guess">
<p>
<cfinput name="OK" type="submit" value="OK">
</p>
</cfform>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
