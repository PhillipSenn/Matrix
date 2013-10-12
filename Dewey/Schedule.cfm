<cfparam name="url.SectionID" default="0" type="integer">
<cfset qrySchedule = Application.Schedule.Where(
	FK="SectionID",
	ID=url.SectionID,
	OrderBy="ScheduleSort"
)>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>#NumberFormat(qrySchedule.MainSort,"000")# - #qrySchedule.MainDesc#</h1>
<h2>#NumberFormat(qrySchedule.DivSort,"00")# - #qrySchedule.DivDesc#</h2>
<h3>#qrySchedule.SectionSort# - #qrySchedule.SectionDesc#</h3>
<article>
	<table class="border">
		<thead>
			<tr>
				<th>Dewey</th>
				<th class="num">Schedule</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<cfloop query="qrySchedule">
				<tr>
					<td>#NumberFormat(MainSort+DivSort+SectionSort+ScheduleSort,"000.0000")#</td>
					<td class="num">#ScheduleSort#</td>
					<td>#ScheduleDesc#</td>
				</tr>
			</cfloop>
		</tbody>
	</table>
</article>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/end.cfm">
</cfoutput>
