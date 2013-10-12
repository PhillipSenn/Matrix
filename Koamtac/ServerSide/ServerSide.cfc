<cfcomponent extends="Library.com.CRUD">
<cfset TableName = "Distillery">
<cfset SortOrder = "DistilleryDateTime DESC">

<cffunction name="Save">
	<cfargument name="form">
	
	<cfquery>
	INSERT INTO matrix.Distillery(Location,Temperature) VALUES
	(<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Location#">
	,<cfqueryparam cfsqltype="cf_sql_integer" value="#val(form.Temperature)#">
	)
	</cfquery>
</cffunction>
</cfcomponent>