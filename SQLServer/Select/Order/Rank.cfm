<cfset myContent = "
SELECT TOP 800 StateName
,RANK() OVER (ORDER BY StateName) as [Rank]
,DENSE_RANK() OVER (ORDER BY StateName) as DenseRank
FROM City
JOIN State
ON City_StateID = StateID
ORDER BY StateName,CityName
">

<cfquery name="qryState">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
At row 474, notice that the second state has a rank of 474, but a dense rank of 2.<br>
This query was limited to the top #qryState.Recordcount# rows.
<table>
	<thead>
		<tr>
			<th class="num">Row</th>
			<th class="num">Dense<br>Rank</th>
			<th class="num">Rank</th>
			<th>StateName</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td class="num">#CurrentRow#</td>
				<td class="num">#DenseRank#</td>
				<td class="num">#Rank#</td>
				<td>#StateName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
