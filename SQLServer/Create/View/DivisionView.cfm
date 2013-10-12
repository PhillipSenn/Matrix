<cfset myContent = "
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'DivisionView'))
DROP View DivisionView
GO
CREATE VIEW DivisionView AS
SELECT *
FROM Division;
SELECT *
FROM DivisionView
ORDER BY DivisionID
">
<cfquery name="qryDivision">
SELECT *
FROM DivisionView
ORDER BY DivisionID
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>
#myContent#
</pre>
<table>
	<thead>
		<tr>
			<th class="num">DivisionID</th>
			<th>DivisionName</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryDivision">
			<tr>
				<td class="num">#DivisionID#</td>
				<td>#DivisionName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
