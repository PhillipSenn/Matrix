<cfquery name="qry">
SELECT RowConstructor.StateID,StateName,Cities FROM(
	VALUES
		(101),(102),(103),(104),(105),(106),(107),(108),(109)
		,(110),(111),(112),(113),(114),(115),(116),(117),(118),(119)
		,(120),(121),(122),(123),(124),(125),(126),(127),(128),(129)
		,(130),(131),(132),(133),(134),(135),(136),(137),(138),(139)
		,(140),(141),(142),(143),(144),(145),(146),(147),(148),(149)
		,(150),(151),(152),(153)
	) AS RowConstructor(StateID)
LEFT JOIN (
	SELECT StateID,StateName,Count(*) AS Cities
	FROM dbo.TempCity#session.ZenGardenSort#
	JOIN dbo.TempState#session.ZenGardenSort#
	ON City_StateID = StateID
	GROUP BY StateID,StateName
) X
ON RowConstructor.StateID = X.StateID
ORDER BY StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Row Constructors</h3>
You can see that we hard coded the StateID's to be used as the base for a left outer join.<br>
But because the subquery doesn't include Guam or Puerto Rico, 
their name is missing as well as their city count.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateID" text="#StateID#">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="Cities" text="#NumberFormat(Cities)#" align="right">
</cftable>
A better example is one I've seen on page 302 of SQL Server 2008 Bible, where Paul Nielsen has sales
for 4 quarters, but the 4th quarter isn't in yet.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
