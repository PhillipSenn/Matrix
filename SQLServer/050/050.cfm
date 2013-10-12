<cfoutput>
<cfquery>
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.ParentCityName') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION dbo.ParentCityName
</cfquery>
<cfquery name="qry">
CREATE FUNCTION dbo.ParentCityName(@ParentID Int)
RETURNS Varchar(128)
AS BEGIN
	RETURN (
		SELECT CityName
		FROM dbo.TempCity#session.ZenGardenSort#
		WHERE CityID = @ParentID
	)
END;
</cfquery>
<cftry>
<cfquery name="qry">
SELECT *
,dbo.ParentCityName(ParentID) AS ParentCity
FROM dbo.TempCity#session.ZenGardenSort#
Where ParentID > 0
ORDER BY ParentID
</cfquery>
<cfcatch>
	<cfset Msg = cfcatch.Detail>
</cfcatch>
</cftry>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>This example shows how to use a static function in SQL Server.</p>
<p>It's not the greatest example because you could do this with a self-join, but the purpose is to show the syntax of how to create and use a function.</p>
<p>Oh!  I guess I've got a permissions problem.</p>
#Msg#
<!---	<cftable query="qry" colheaders="yes" htmltable="yes">
		<cfcol header="City" text="#CityName#">
		<cfcol header="Parent City" text="#ParentCity#">
	</cftable>--->
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>