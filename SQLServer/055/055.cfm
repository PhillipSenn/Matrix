<cfif StructKeyExists(form,"Guess")>
	<cfquery name="qry">
	SELECT 'True' AS AllTest
	WHERE #form.Guess# <= ALL(
		SELECT Population 
		FROM dbo.TempState#session.ZenGardenSort#
		WHERE Population > 0
	)
	</cfquery>
</cfif>
<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfform preservedata="yes">
<cfif StructKeyExists(form,"Guess")>
	<cfif qry.RecordCount>
		<h3>Higher</h3>
	<cfelse>
		<h3>Lower.  The answer is: 563626, but I don't know what to do once you get it right.</h3>
	</cfif>
<cfelse>
	<h3>WHERE ALL(...)</h3>
</cfif>
What is the population of the least populated state?
<cfinput name="Guess">
<p>
<input name="Save" type="submit" value="OK">
</p>
</cfform>
<cfinclude template="/Inc/Foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
