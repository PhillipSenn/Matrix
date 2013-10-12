<cfquery name="qry">
Declare @TempTable TABLE(
	TempTableID Int Identity(1,1),
	TempTableName sysname not null
)
Declare @TempTableRowCount Int
Declare @TempTableID Int=1
Declare @TempTableName Varchar(128)
Declare @result TABLE(
ResultName sysname not null,
Rows Int not null
)

-- Load with items you wish to review
INSERT INTO @TempTable (TempTableName)
select name
from sys.tables
where Name like 'TempState%'
order by Name

SET @TempTableRowCount = @@RowCount
WHILE @TempTableID <= @TempTableRowCount BEGIN
	SELECT @TempTableName=TempTableName from @TempTable where TempTableID=@TempTableID
	INSERT INTO @result (ResultName, Rows)
	execute ('SELECT ''' + @TempTableName + ''', count(*) from ' + @TempTableName)
	SET @TempTableID = @TempTableID + 1
END
SELECT * from @result
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This is an example of a while loop.
It loops through all the tables that match 'tempstate%' and inserts into a table variable the name of the tempstate table and the number of rows.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Table Name" text="#ResultName#">
	<cfcol header="Rows" text="#Rows#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
