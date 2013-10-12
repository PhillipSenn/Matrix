<cfcomponent>
<!---
<cfset Variables.TableName = "">
--->
<cffunction name="Init">
	<cfset var local = {}>

	<cfquery name="local.qry" datasource="#Application.Datasource#">
	SELECT TOP 1 *
	FROM #Variables.TableName#
	</cfquery>
	<cfset Variables.ColumnList = local.qry.ColumnList>
	<cfreturn this>
</cffunction>

<cffunction name="View1">
	<cfargument name="OrderBy">
	<cfargument name="Extended">
	<cfset var local = {}>

	<cfif StructKeyExists(arguments,"Extended") AND arguments.Extended>
		<cfset local.TableName = Variables.TableName & "Extended">
	<cfelse>
		<cfset local.TableName = Variables.TableName>
	</cfif>
	<cftry>
		<cfquery name="local.qry" datasource="#Application.Datasource#">
		SELECT *
		FROM #local.TableName#View
		<cfif StructKeyExists(arguments,"OrderBy")>
			ORDER BY #arguments.OrderBy#
		<cfelseif ListFindNoCase(Variables.ColumnList,"#Variables.TableName#Sort")>
			ORDER BY #Variables.TableName#Sort,#Variables.TableName#ID
		<cfelse>
			ORDER BY #Variables.TableName#ID
		</cfif>
		</cfquery>
		<cfcatch>
			<cfif Application.TryCatch>
				<cfset request.msg = CreateObject("component","Library.com.Database").Error(cfcatch)>
				<cfoutput>#request.msg#</cfoutput>
				<cfabort>
			<cfelse>
				<cfrethrow>
			</cfif>
		</cfcatch>
	</cftry>
	<cfreturn local.qry>
</cffunction>

<cffunction name="Where">
	<cfargument name="FK">
	<cfargument name="ID">
	<cfargument name="OrderBy">
	<cfargument name="sqltype">
	<cfargument name="Extended">
	<cfset var local = {}>

	<cfif StructKeyExists(arguments,"Extended") AND arguments.Extended>
		<cfset local.TableName = Variables.TableName & "Extended">
	<cfelse>
		<cfset local.TableName = Variables.TableName>
	</cfif>
	<!--- todo: don't allow "" for arguments.id if cfsqltype="cf_sql_integer" --->
	<cftry>
		<cfquery name="local.qry" datasource="#Application.Datasource#">
		SELECT *
		FROM #local.TableName#View
		WHERE #arguments.FK# IN(
			<cfif StructKeyExists(arguments,"sqltype")>
				<cfif arguments.sqltype EQ "cf_sql_varchar">
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.ID#" list="yes">
				<cfelse>
					<cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.ID#" list="yes">
				</cfif>
			<cfelse>
				<cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.ID#" list="yes">
			</cfif>
		)
		<cfif StructKeyExists(arguments,"OrderBy")>
			ORDER BY #arguments.OrderBy#
		<cfelseif ListFindNoCase("#Variables.TableName#Sort",Variables.ColumnList)>
			ORDER BY #Variables.TableName#Sort,#Variables.TableName#ID
		<cfelse>
			ORDER BY #Variables.TableName#ID
		</cfif>
		</cfquery>
		<cfcatch>
			<cfif Application.TryCatch>
				<cfset request.msg = CreateObject("component","Library.com.Database").Error(cfcatch)>
				<cfoutput>#request.msg#</cfoutput>
				<cfabort>
			<cfelse>
				<cfrethrow>
			</cfif>
		</cfcatch>
	</cftry>
	<cfreturn local.qry>
</cffunction>

<cffunction name="Read">
	<cfargument name="ID">
	<cfargument name="Extended">
	<cfset var local = {}>

	<cfif StructKeyExists(arguments,"Extended") AND arguments.Extended>
		<cfset local.TableName = Variables.TableName & "Extended">
	<cfelse>
		<cfset local.TableName = Variables.TableName>
	</cfif>
	<cftry>
		<cfquery name="local.qry" datasource="#Application.Datasource#">
		SELECT *
		FROM #local.TableName#View
		WHERE #Variables.TableName#ID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.ID#">
		</cfquery>
		<cfcatch>
			<cfif Application.TryCatch>
				<cfset request.msg = CreateObject("component","Library.com.Database").Error(cfcatch)>
				<cfoutput>#request.msg#</cfoutput>
				<cfabort>
			<cfelse>
				<cfrethrow>
			</cfif>
		</cfcatch>
	</cftry>
	<cfreturn local.qry>
</cffunction>

<cffunction name="Delete" hint="I require the Primary Key as my sole argument">
	<cfargument name="ID">
	<cfset var local = {}>

	<cfset local.result = true>
	<cfif arguments.ID NEQ "">
		<cftry>
			<cfquery name="local.qry" datasource="#Application.Datasource#">
			DELETE
			FROM #Variables.TableName#
			WHERE #Variables.TableName#ID = <cfqueryparam cfsqltype="cf_sql_integer" value='#arguments.ID#'>
			</cfquery>
			<cfcatch>
				<cfif Application.TryCatch>
					<cfset request.msg = CreateObject("component","Library.com.Database").Error(cfcatch)>
					<cfset local.result = false>
				<cfelse>
					<cfrethrow>
				</cfif>
			</cfcatch>
		</cftry>
	</cfif>
	<cfreturn local.result>
</cffunction>

<cffunction name="Error">
	<cfargument name="form">
	<cfset var local = {}>
	
	<cfset local.result = CreateObject("component","Library.com.Database").Error(form)>
	<cfreturn local.result>
</cffunction>
</cfcomponent>