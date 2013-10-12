<cfquery name="qry">
DECLARE @CityIDs VARCHAR(MAX)
SELECT StateName
,@CityIDs = COALESCE(@CityIDs+',' ,'') + CityID
FROM TempState
SELECT @CityIDs
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Here are the states, and a comma separated list of the related cities:</h3>
<table>
	<thead>
		<tr>
			<th>State</th>
			<th>CityIDs</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td>#StateName#</td>
				<td>#CityIDs#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/Foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
