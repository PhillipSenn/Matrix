<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">


<div class="btn-toolbar" style="margin: 0;">
	<div class="btn-group">
		<a href="BaseSource.cfm" class="btn">Base Temlate</a>
		<button class="btn dropdown-toggle" data-toggle="dropdown">
		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="htmlSource.cfm">html.cfm</a></li>
			<li><a href="bodySource.cfm">body.cfm</a></li>
			<li><a href="footSource.cfm">foot.cfm</a></li>
			<li><a href="EndSource.cfm">End.cfm</a></li>
			<li><a href="jQuerySource.cfm">jQuery.cfm</a></li>
			<li><a href="cfmSource.cfm">BootStrap2.cfm</a></li>
		</ul>
	</div>
	<div class="btn-group">
		<a href="appSourceCode.cfm" class="btn">Application.cfc</a>
		<button class="btn dropdown-toggle" data-toggle="dropdown">
		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="onApplication10Source.cfm">onApplication</a></li>
			<li class="divider"></li>
			<li><a href="onApplicationStartSource.cfm">onApplicationStart</a></li>
			<li><a href="onSessionStartSource.cfm">onSessionStart</a></li>
			<li><a href="onRequestStartSource.cfm">onRequestStart</a></li>
		</ul>
	</div>
</div>
<table>
	<thead>
		<tr>
			<th>Abbr</th>
			<th>State</th>
			<th class="num">is</th>
			<th class="num">Statehood</th>
			<th class="num">Population</th>
			<th class="num">Cities</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="session.qryState">
			<tr>
				<td>#StateAbbr#</td>
				<td>
					<a href="State.cfm?StateID=#StateID#">#StateName#</a>
				</td>
				<td class="num">#YesNoFormat(isState)#</td>
				<td class="num">#DateFormat(Statehood,"mm/dd/yyyy")#</td>
				<td class="num">#NumberFormat(Population)#</td>
				<td class="num">#Cities#</td>
			</tr>
		</cfloop>
	</tbody>
	<tfoot>
		<td colspan="4">&nbsp;</td>
		<td class="num">#ArraySum(session.qryState["Cities"])#</td>
	</tfoot>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
