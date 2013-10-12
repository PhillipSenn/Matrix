<cfif StructKeyExists(form,"Population")>
	<cftry>
		<cfquery name="qry">
		UPDATE dbo.TempState#session.ZenGardenSort#
		SET Population = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.Population#">
		WHERE StateName = 'North Carolina'
		</cfquery>
		<cfcatch>
			<cfoutput>
			<h2>Detail:</h2>
			#cfcatch.Detail#
			<h2>Message</h2>
			#cfcatch.Message#
			<h2>NativeErrorCode</h2>
			#cfcatch.NativeErrorCode#
			<h2>SQLState</h2>
			#cfcatch.SQLState#
			<h2>Type</h2>
			#cfcatch.Type#
			</cfoutput>
		</cfcatch>
	</cftry>
</cfif>
<cftry>
	<cfquery name="qry">
		ALTER TABLE dbo.TempState#session.ZenGardenSort#
		DROP CONSTRAINT ck_Population#session.ZenGardenSort#
	</cfquery>
	<cfcatch>
	</cfcatch>
</cftry>
<cfquery name="qry">
ALTER TABLE dbo.TempState#session.ZenGardenSort#
ADD CONSTRAINT ck_Population#session.ZenGardenSort# CHECK(Population >= 0)
</cfquery>

<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfoutput>
<cfform>
	This example shows the use of a check constraint.  Try changing the population of North Carolina to -1.
	<p>New Population:<cfinput name="Population"></p>
	<p><cfinput name="Submit" value="Update" type="submit">
</cfform>
This page inspired by SQL Server Bible 2008, page 389.
</cfoutput>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
