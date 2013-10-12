<cfset request.jqm.hidden = true>
<cfset request.jqm.Page = false> <!--- There are multiple pages in the file. --->

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section id="States">
	<header>
		<a href="JavaScript:;" data-rel="back" data-icon="arrow-l">Back</a>
		<h1>User: #session.qry.UsrID#</h1>
	</header>
	<article>
		<ul data-role="listview" data-filter="true" id="StatesListView">
		<cfloop query="session.qryState">
			<li>
				<a href="##State" data-stateid=#stateid#>#StateName#</a>
				<span class="ui-li-count">#Cities#</span>
			</li>
		</cfloop>
		</ul>
	</article>
</section>
<section id="State">
	<header>
		<a href="JavaScript:;" data-rel="back" data-icon="arrow-l">Back</a>
		<h1>User: #session.qry.UsrID#</h1>
	</header>
	<article>
		<label for="StateName">Name:</label>
		<input id="StateName" autofocus>
		<label for="Population">Population:</label>
		<input type="number" id="Population">
		<label for="Statehood">Statehood:</label>
		<input type="date" id="Statehood">

		<label for="isState">isState?</label>
		<select id="isState" data-role="slider">
		<option value="0">No</option>
		<option value="1">Yes</option>
		</select> 
		<div>
			<label for="StateAbbr">Abbr:</label>
			<input id="StateAbbr" maxlength="2">
		</div>
		<label for="DivisionID">Division:</label>
		<select id="DivisionID">
			<cfloop query="Application.qryDivision">
				<option value="#DivisionID#">#DivisionName#</option>
			</cfloop>
		</select>
		<a href="JavaScript:;" data-rel="back" data-role="button" data-inline="true">Cancel</a>
		<a href="##States" id="Save" data-role="button" data-inline="true" data-theme="b">Save</a>
		<input type="hidden" id="StateID">
		<div data-role="collapsible-set" id="Cities">
			<div data-role="collapsible">
				<h3>Cities</h3>
				<ul>
				</ul>
			</div>
		</div>
		todo: Can't get this collapsible-set to refresh.
	</article>
</section>
<cfinclude template="/Inc/foot.cfm">
<script src="ajaxEnabled.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>