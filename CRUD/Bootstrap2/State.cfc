<cfcomponent>
<!---
This was written to show the cf8 tag syntax.
Other parts show the cf9 script syntax.
--->
<cffunction name="Init">
	<cfreturn this>
</cffunction>

<cffunction name="Save">
	<cfargument name="form">
	<cfset var local = {}>
	
	<cfset request.msg = "">
	<cfset request.rtn = true>
	<cfif StructKeyExists(form,"isState")>
		<cfset local.isState = 1>
	<cfelse>
		<cfset local.isState = 0>
	</cfif>
	<cfif Val(form.StateID)>
		<cftry>
			<cfquery name="local.qry" datasource="MatrixSave">
			UPDATE State#session.qry.UsrID# SET
			 StateName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.StateName#">
			,Population = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.Population#">
			,Statehood = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Statehood#">
			,isState = <cfqueryparam cfsqltype="cf_sql_integer" value="#local.isState#">
			,StateAbbr = <cfqueryparam cfsqltype="cf_sql_char" value="#form.StateAbbr#">
			,State_DivisionID = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.DivisionID#">
			WHERE StateID = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.StateID#">;
			SELECT *
			FROM StateView
			WHERE StateID = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.StateID#">;
			</cfquery>
			<cfcatch>
				<cfset local.qry = QueryNew('Error')>
				<cfset request.msg = Error(cfcatch)>
				<cfset request.rtn = false>
			</cfcatch>
		</cftry>
	<cfelse>
		<cftry>
			<cfquery name="local.qry" datasource="MatrixSave">
			INSERT INTO State#session.qry.UsrID#(StateName,Population,Statehood,isState,StateAbbr,State_DivisionID) VALUES
			(<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.StateName#">
			,<cfqueryparam cfsqltype="cf_sql_integer" value="#form.Population#">
			,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Statehood#">
			,<cfqueryparam cfsqltype="cf_sql_integer" value="#local.isState#">
			,<cfqueryparam cfsqltype="cf_sql_char" value="#form.StateAbbr#" maxlength="2">
			,<cfqueryparam cfsqltype="cf_sql_integer" value="#form.DivisionID#">
			);
			SELECT *
			FROM StateView
			WHERE StateID = Scope_Identity();
			</cfquery>
			<cfcatch>
				<cfset local.qry = QueryNew('Error')>
				<cfset request.msg = Error(cfcatch)>
				<cfset request.rtn = false>
			</cfcatch>
		</cftry>
	</cfif>
	<cfreturn local.qry>
</cffunction>

<cffunction name="Delete">
	<cfargument name="StateID">
	
	<cftry>
		<cfquery datasource="MatrixSave">
		DELETE FROM State#session.qry.UsrID#
		WHERE StateID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.StateID#">;
		</cfquery>
		<cfcatch>
			<cfset request.msg = Error(cfcatch)>
			<cfset request.rtn = false>
		</cfcatch>
	</cftry>
</cffunction>

<cffunction name="Error">
	<cfargument name="form">
	<cfset var local = {}>

	<cfset local.result = arguments.form.Detail>
	<cfset local.result = Replace(local.result,"[Macromedia]","","all")>
	<cfset local.result = Replace(local.result,"[SQLServer JDBC Driver]","","all")>
	<cfset local.result = Replace(local.result,"[SQLServer]","","all")>
	<cfif FindNoCase("The DELETE statement conflicted with the REFERENCE constraint",local.result)>
		<cfset local.result = "There are records that depend on this entry.  They need to be deleted first.">
	<cfelseif local.result EQ "">
		<cfset local.result = arguments.form.Message>
		<cfset local.result = Replace(local.result,"The cause of this output exception was that:","","all")>
		<cfset local.result = Replace(local.result,"coldfusion.runtime.locale.CFLocaleBase$InvalidDateTimeException:","","all")>
		<cfset local.result = Replace(local.result,"..",".","all")>
	</cfif>
	<cfif local.result EQ "">
		<cfset local.result = "An unknown error has occurred.">
	</cfif>
	<cfreturn local.result>
</cffunction>
</cfcomponent>