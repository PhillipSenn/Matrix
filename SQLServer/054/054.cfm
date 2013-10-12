<cfquery name="qry">
DECLARE @SQL Varchar(Max)
DECLARE @I Int
SET @I = 10
WHILE @I < 100 BEGIN
	IF @I = 11 BEGIN
		BREAK
	END
	SET @SQL = 'SELECT COUNT(*) AS Counter FROM TempCity' + CAST(@I AS Varchar)
	EXEC(@SQL)
	SET @I = @I + 1;
END
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>WHILE @I ...</h3>
		This example shows how to construct a loop, how to break out of it on a condition, and how to create a dynamic SQL string.
		<pre>
DECLARE @SQL Varchar(Max)
DECLARE @I Int
SET @I = 10
WHILE @I < 100 BEGIN
	IF @I = 11 BEGIN
		BREAK
	END
	SET @SQL = 'SELECT COUNT(*) AS Counter FROM dbo.TempCity' + CAST(@I AS Varchar)
	EXEC(@SQL)
	SET @I = @I + 1;
END
		</pre>
		</p>
		#qry.Counter#: the number of rows in dbo.TempCity10
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
