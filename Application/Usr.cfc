<cfcomponent extends="/Library/com/CRUD">
<cfset Variables.TableName = "Usr">

<cffunction name="Login" hint="If the user exists, select where password.  If not exists, add them.">
	<cfargument name="form">
	<cfset var local = {}>
	
	<cfquery name="local.qry1">
	SELECT UsrID
	FROM matrix.Usr
	WHERE UsrName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.UsrName#" maxlength="128">
	</cfquery>
	<cfif local.qry1.Recordcount>
		<cfquery name="local.qry">
		SELECT * 
		FROM matrix.Usr
		WHERE UsrName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.UsrName#" maxlength="128">
		AND UsrPass = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.UsrPass#" maxlength="128">
		</cfquery>
	<cfelse>
		<cfquery name="local.qry">
		INSERT INTO matrix.Usr(UsrName,UsrPass) VALUES
		(<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.UsrName#" maxlength="128">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.UsrPass#" maxlength="128">
		);
		SELECT * FROM matrix.Usr
		WHERE UsrID = Scope_Identity()
		</cfquery>
	</cfif>			
	<cfreturn local.qry>
</cffunction>
</cfcomponent>