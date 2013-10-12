<cfquery name="qry">
DECLARE @Info Table(
InfoID Int Identity Primary Key
,InfoName Varchar(128)
)
INSERT INTO @Info(InfoName)
SELECT Table_Name FROM INFORMATION_SCHEMA.TABLES
WHERE Table_Name LIKE 'TempState%'
ORDER BY Table_Name;
SELECT * FROM @Info
ORDER BY InfoID
</cfquery>
<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table>
	<thead>
		<tr>
			<th>InfoID</th>
			<th>InfoName</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qry">
			<tr>
				<td>#InfoID#</td>
				<td>#InfoName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>