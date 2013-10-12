<cfparam name="url.MainID" default="0" type="integer">
<cfset qryDiv = Application.Div.Where(
	FK="MainID",
	ID=url.MainID,
	OrderBy="DivSort"
)>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>#NumberFormat(qryDiv.MainSort,"000")# - #qryDiv.MainDesc#</h1>
<article>
	<table class="border">
		<thead>
			<tr>
				<th class="num">Division</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<cfloop query="qryDiv">
				<tr>
					<td class="num"><a href="Section.cfm?DivID=#DivID#">#NumberFormat(DivSort,"00")#</a></td>
					<td>#DivDesc#</td>
				</tr>
			</cfloop>
		</tbody>
	</table>
</article>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/end.cfm">
</cfoutput>
