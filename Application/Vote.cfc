<cfcomponent extends="Library.com.CRUD">
<cfset Variables.TableName = "Vote">

<cffunction name="WhereUsrSuper">
	<cfset local = {}>
	
	<cfquery name="local.qry">
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
	SELECT VoteView.*
	,Introduction.Introduction
	,Beginner.Beginner
	,Intermediate.Intermediate
	,Advanced.Advanced
	,International.International
	FROM matrix.VoteView
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
	WHERE UsrSuper=1
	ORDER BY GridSort
	</cfquery>
	<cfreturn local.qry>
</cffunction>
</cfcomponent>