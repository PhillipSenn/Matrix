<cfquery name="qry">
DECLARE @StateID Int
DECLARE @Population Int
DECLARE @Subtotal Int=0
DECLARE @TableA Table(
StateID Int,
SubTotal Int
)
DECLARE cRun CURSOR STATIC FOR
	SELECT StateID,Population 
	FROM dbo.TempState#session.ZenGardenSort#
	ORDER BY StateID;
OPEN cRun;
FETCH cRun INTO @StateID,@Population;
WHILE @@FETCH_STATUS = 0 BEGIN;
	SET @SubTotal += @Population
	INSERT INTO @TableA(StateID,SubTotal) VALUES(@StateID,@SubTotal)
	FETCH cRun INTO @StateID,@Population;
END;
CLOSE cRun;
DEALLOCATE cRun;
SELECT StateName,SubTotal 
FROM @TableA A
JOIN dbo.TempState#session.ZenGardenSort#
ON A.StateID=dbo.TempState#session.ZenGardenSort#.StateID
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This running sum was produced by a T-SQL cursor.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="SubTotal" text="#NumberFormat(SubTotal)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
