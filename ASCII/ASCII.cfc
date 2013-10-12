<cfcomponent>
<cfparam name="url.returnformat" default="json"> <!--- success --->

<cffunction name="InsertVote" access="remote">
	<cfargument name="GridID">
	<cfargument name="UsageID">
	<cfset var local = {}>
	<cfset local.result = {}>
	
	<cfset local.UsageID = Val(arguments.UsageID)>
	<cfif local.UsageID GT 0 AND local.UsageID LE 5>
		<!--- TODO: This could be an insert followed by an update --->
		<cfquery>
		DELETE FROM matrix.Vote
		WHERE Vote_UsrID = <cfqueryparam cfsqltype="cf_sql_integer" value="#session.UsrID#">
		AND Vote_GridID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.GridID#">
		INSERT INTO matrix.Vote(Vote_UsrID,Vote_GridID,Vote_UsageID) VALUES
		(<cfqueryparam cfsqltype="cf_sql_integer" value="#session.UsrID#">
		,<cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.GridID#">
		,<cfqueryparam cfsqltype="cf_sql_integer" value="#local.UsageID#">
		)
		</cfquery>
	</cfif>
	<cfquery name="local.result.qry">
	WITH Introduction AS(
		SELECT Vote_GridID AS Introduction_GridID,
		COUNT(*) AS Introduction
		FROM matrix.Vote
		WHERE Vote_UsageID=1
		GROUP BY Vote_GridID
	),
	Beginner AS(
		SELECT Vote_GridID AS Beginner_GridID,
		COUNT(*) AS Beginner
		FROM matrix.Vote
		WHERE Vote_UsageID=2
		GROUP BY Vote_GridID
	),
	Intermediate AS(
		SELECT Vote_GridID AS Intermediate_GridID,
		COUNT(*) AS Intermediate
		FROM matrix.Vote
		WHERE Vote_UsageID=3
		GROUP BY Vote_GridID
	),
	Advanced AS(
		SELECT Vote_GridID AS Advanced_GridID,
		COUNT(*) AS Advanced
		FROM matrix.Vote
		WHERE Vote_UsageID=4
		GROUP BY Vote_GridID
	),
	International AS(
		SELECT Vote_GridID AS International_GridID,
		COUNT(*) AS International
		FROM matrix.Vote
		WHERE Vote_UsageID=5
		GROUP BY Vote_GridID
	)
	SELECT Grid.*
	,Introduction.Introduction
	,Beginner.Beginner
	,Intermediate.Intermediate
	,Advanced.Advanced
	,International.International
	FROM matrix.Grid
	LEFT JOIN Introduction
	ON GridID = Introduction_GridID
	LEFT JOIN Beginner
	ON GridID = Beginner_GridID
	LEFT JOIN Intermediate
	ON GridID = Intermediate_GridID
	LEFT JOIN Advanced
	ON GridID = Advanced_GridID
	LEFT JOIN International
	ON GridID = International_GridID
	WHERE
	GridID=<cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.GridID#">
	ORDER BY GridSort
	</cfquery>
	<cfreturn local.result>
</cffunction>
</cfcomponent>