<cfset myContent = "
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'StateView'))
DROP View StateView
GO
CREATE VIEW StateView AS
SELECT State.*
,DivisionView.*
FROM State
JOIN DivisionView
ON State_DivisionID = DivisionID;
SELECT *
FROM StateView
ORDER BY StateName
">
<cfquery name="qryState">
SELECT *
FROM StateView
ORDER BY StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>
#myContent#
</pre>
Notice that you can't have "ORDER BY" in the view itself.
<table>
	<thead>
		<tr>
			<th class="num">StateID</th>
			<th>StateName</th>
			<th class="num">isState</th>
			<th>Statehood</th>
			<th>Abbr</th>
			<th class="num">State_<br>DivisionID</th>
			<th class="num">Population</th>
			<th>StateMap</th>
			<th>LastUpdated</th>
			<th>Division</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td class="num">#StateID#</td>
				<td>#StateName#</td>
				<td class="num">#isState#</td>
				<td>#DateFormat(Statehood,"mm/dd/yyyy")#</td>
				<td>#StateAbbr#</td>
				<td class="num">#State_DivisionID#</td>
				<td class="num">#NumberFormat(Population)#</td>
				<td>#StateMap#</td>
				<td>#DateTimeFormat(LastUpdated,"mm/dd/yy hh:mmtt")#</td>
				<td>#DivisionName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
