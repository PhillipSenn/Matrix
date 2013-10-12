<cfparam name="url.DivID" default="0" type="integer">
<cfset qrySection = Application.Section.Where(
	FK="DivID",
	ID=url.DivID,
	OrderBy="SectionSort"
)>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>#NumberFormat(qrySection.MainSort,"000")# - #qrySection.MainDesc#</h1>
<h2>#NumberFormat(qrySection.DivSort,"000")# - #qrySection.DivDesc#</h2>
<article>
	<table class="border">
		<thead>
			<tr>
				<th class="num">Section</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<cfloop query="qrySection">
				<cfset qrySchedule = Application.Schedule.Where("SectionID",SectionID)>
				<tr>
					<td class="num">
						<cfif qrySchedule.Recordcount>
							<a href="Schedule.cfm?SectionID=#SectionID#">#SectionSort#</a>
						<cfelse>
							#SectionSort#
						</cfif>
					</td>
					<td>#SectionDesc#</td>
				</tr>
			</cfloop>
		</tbody>
	</table>
</article>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/end.cfm">
</cfoutput>
