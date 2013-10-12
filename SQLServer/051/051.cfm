<cfquery name="qryState">
SELECT StateName,(
	SELECT CityID [@value]
	,CityName [text()]
	FROM dbo.TempCity#session.ZenGardenSort#
	WHERE City_StateID = StateID
	FOR XML PATH('option'), TYPE
) Cities
FROM dbo.TempState#session.ZenGardenSort#
</cfquery>
<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form>
<table>
	<thead>
		<tr>
			<th>StateName</th>
			<th>City</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td>#StateName#</td>
				<td>
					<select name="CityID">
						#Cities#
					</select>
				</td>
			</tr>
		</cfloop>
	</tbody>
</table>
</form>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>