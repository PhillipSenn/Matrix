This doesn't work.

<cfcomponent output="no">
<cfheader name="Content-Type" value="text/event-stream; charset=utf-8">
<cfparam name="url.returnformat" default="json">

<cffunction name="View1" access="remote">
	<cfargument name="form">
	<cfset local = {}>
	<cfquery name="local.qry" datasource="#Application.Datasource#" username="#Application.Username#" password="#Application.Password#">
	SELECT * 
	FROM lru.Student
	ORDER BY LastName,FirstName,StudentID
	</cfquery>
	<cfreturn local.qry>
</cffunction>
</cfcomponent>