<cfscript>
if (StructKeyExists(form,"Save")) {
	session.State.Save(form);
	session.qryState = session.State.getStatesAndCountCities();
} else if (StructKeyExists(form,"Delete")) {
	session.State.Delete(form.StateID);
	session.qryState = session.State.getStatesAndCountCities();
}
if (request.rtn) {
	location("ajaxDisabled.cfm",false);
}
request.jqm.ajaxEnabled = false;
request.jqm.page = false;
qryState = session.State.Read(url.StateID);
</cfscript>

<cfoutput query="qryState">
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section>
	<header>
		<a href="JavaScript:;" data-rel="back" data-icon="arrow-l">Back</a>
		<h1>Mobile CRUD</h1>
		<a href="##">User: #session.qry.UsrID#</a>
	</header>
	<nav>
		<ul>
			<li><a href="AppSourceCode.cfm">Application.cfc</a></li>
			<li><a href="cfmSourceCode.cfm">cfm Source</a></li>
			<li><a href="cfcSourceCode.cfm">cfc Source</a></li>
		</ul>
	</nav>
	<article>
		<form method="post">
			<article>
				<label for="StateName">Name:</label>
				<input name="StateName" value="#StateName#" autofocus>
				<label for="Population">Population:</label>
				<input type="number" name="Population" value="#Population#">
				<label for="Statehood">Statehood:</label>
				<input type="date" name="Statehood" value="#DateFormat(Statehood,'mm/dd/yyyy')#">
				todo: http://dev.jtsage.com/jQM-DateBox/
				<label for="isState">isState?</label>
				<select name="isState" id="isState" data-role="slider">
					<option value="0"
						<cfif isState EQ 0>
							selected
						</cfif>
						>No
					</option>
					<option value="1"
						<cfif isState EQ 1>
							selected
						</cfif>
						>Yes
					</option>
				</select> 
				<div>
					<label for="StateAbbr">Abbr:</label>
					<input name="StateAbbr" maxlength="2" value="#StateAbbr#">
				</div>
				<label for="DivisionID">Division:</label>
				<select name="DivisionID">
					<cfloop query="Application.qryDivision">
						<option value="#DivisionID#"
							<cfif qryState.State_DivisionID EQ DivisionID>
								selected
							</cfif>
							>#DivisionName#
						</option>
					</cfloop>
				</select>
				<div hidden>
					<a id="Delete" href="Delete.cfm" data-role="button" data-inline="true" data-rel="dialog" data-transition="pop">Delete #StateName#</a>
				</div>
				<a href="JavaScript:;" data-rel="back" data-role="button" data-inline="true">Cancel</a>
				<input type="submit" name="Save" value="Save" data-role="button" data-inline="true">
				<input type="submit" name="Delete" value="Delete" data-role="button" data-inline="true" data-theme="e">
				<input type="hidden" name="StateID" value="#StateID#">
			</article>
		</form>
		<cfset qryCity = Application.City.Where("City_StateID",StateID)>
		<cfif qryCity.Recordcount>
			<div data-role="collapsible-set">
				<div data-role="collapsible">
					<h3>#qryCity.Recordcount# cities</h3>
					<ul>
						<cfloop query="qryCity">
							<li>#CityName#</li>
						</cfloop>
					</ul>
				</div>
			</div>
		</cfif>
	</article>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
