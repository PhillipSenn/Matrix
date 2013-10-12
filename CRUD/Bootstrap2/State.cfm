<cfif StructKeyExists(form,"Save")>
	<cfset State = CreateObject("component","State").init()>
	<cfset State.Save(form)>
	<cfset session.qryState = session.State.getStatesAndCountCities()>
<cfelseif StructKeyExists(form,"Delete")>
	<cfset session.State.Delete(form.StateID)>
	<cfset session.qryState = session.State.getStatesAndCountCities()>
	<cflocation url="Bootstrap2.cfm" addtoken="no">
<cfelseif StructKeyExists(url,"StateID")>
	<cfset qry = session.State.Read(url.StateID)>
	<cfloop list="#qry.Columnlist#" index="FieldName">
		<cfif NOT StructKeyExists(form,FieldName)>
			<cfset form[FieldName] = HTMLEditFormat(qry[FieldName][1])>
		</cfif>
	</cfloop>
<cfelse> <!--- Defaults --->
	<cfparam name="form.StateName" default="">
	<cfparam name="form.Population" default="0">
	<cfparam name="form.Statehood" default="#DateFormat(Now(),'mm/dd/yyyy')#">
	<cfparam name="form.StateAbbr" default="">
	<cfparam name="form.DivisionID" default="0">
	<cfparam name="form.StateID" default="0">
</cfif>
<cfif request.rtn>
	<cflocation url="Bootstrap2.cfm" addtoken="no">
</cfif>
<cfset qryCity = Application.City.Where("City_StateID",form.StateID)>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<fieldset>
	<legend>State</legend>
	<form method="post">
		<label for="StateName">Name:</label>
		<input name="StateName" id="StateName" value="#form.StateName#" autofocus>
		<label for="Population">Population:</label>
		<input type="number" name="Population" id="Population" value="#form.Population#">
		<label for="Statehood">Statehood:</label>
		<input name="Statehood" id="Statehood" value="#DateFormat(form.Statehood,'mm/dd/yyyy')#">
	
		<label for="isState" class="checkbox">isState?
			<input type="checkbox" name="isState" id="isState"
			<cfif StructKeyExists(form,"isState") AND Val(form.isState)>
				checked
			</cfif>
		>
		</label>
		<label for="StateAbbr">Abbr:</label>
		<input name="StateAbbr" id="StateAbbr" maxlength="2" value="#StateAbbr#">
		<label for="DivisionID">Division:</label>
		<select name="DivisionID" id="DivisionID">
			<cfloop query="Application.qryDivision">
				<option value="#DivisionID#"<cfif Application.qryDivision.DivisionID EQ form.DivisionID> selected</cfif>>#DivisionName#</option>
			</cfloop>
		</select>
		<div class="form-actions">
			<input type="submit" name="Save" value="Save">
			<input type="submit" name="Cancel" value="Cancel">
			<cfif qryCity.Recordcount>
				<input type="submit" name="Delete" value="Delete" title="There are #qryCity.Recordcount# cities in #StateName#.
Are you sure you want to delete it?">
			<cfelse>
				<input type="submit" name="Delete" value="Delete" title="Delete #StateName#?">
			</cfif>
		</div>
		<input type="hidden" name="StateID" value="#form.StateID#">
	</form>
	<div class="accordion" id="Cities">
		<cfif form.StateID>
			<cfif qryCity.Recordcount>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="##Cities" href="##collapseOne">
						#qryCity.Recordcount# cities
						</a>
					</div>
					<div id="collapseOne" class="accordion-body collapse"> <!-- in -->
						<div class="accordion-inner">
							<ul>
								<cfloop query="qryCity">
									<li>#CityName#</li>
								</cfloop>
							</ul>
						</div>
					</div>
				</div>
			</cfif>
		</cfif>
		I wanted these to be tabs, but couldn't get tabs to work right, so they're accordions instead.
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="##sql" href="##collapseSQL">
				SQL
				</a>
			</div>
			<div id="collapseSQL" class="accordion-body collapse">
				<div class="accordion-inner">
					<pre>CREATE TABLE State(
StateID <b>Integer</b> Primary Key NONCLUSTERED Identity(100,1) 
,StateName <b>Varchar(128)</b> NOT NULL
,isState <b>Bit</b> default 0 NOT NULL
,Statehood <b>Date</b> NULL
,StateAbbr <b>Char(2)</b> NOT NULL default '' -- Fixed character
,State_DivisionID <b>Int</b> default 0 -- Foreign Key
,Population <b>Int</b> default 0 -- Formatted with comma separators
,StateMap <b>Varchar(11)</b> NOT NULL default '' -- An image
,LastUpdated <b>DateTime2</b> NOT NULL default getdate() 
)
GO
CREATE UNIQUE CLUSTERED INDEX StateName ON State(StateName)
GO
CREATE TABLE City( -- 1 to many relationship
CityID Int Primary Key NONCLUSTERED Identity(1000,1) 
,City_StateID Int NOT NULL
,CityName Varchar(128) NOT NULL
)
GO
CREATE CLUSTERED INDEX State_CityName ON City(City_StateID,CityName) -- UNIQUE 
					</pre>
				</div>
			</div>
		</div>
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="##notes" href="##collapseNotes">
				Notes
				</a>
			</div>
			<div id="collapseNotes" class="accordion-body collapse">
				<div class="accordion-inner">
					This contains different kinds of data:<br>
					StateName is varchar<br>
					Population is an integer that should be displayed with separators (html type="number").<br>
					Statehood is a date field (html type="date")<br>
					isState is a bit field, so on this screen we use type="checkbox"<br>
					StateAbbr is a char(2) field.<br>
					DivisionID is a lookup.<br>
					<p>Note that with type="checkbox", you supply class="checkbox" from twitter bootstrap.  This will left-align the checkboxes.</p>
					
					Issues:
					I'm having trouble with type="date".
					<p>When you click the Save button, I have a separate datasource for saving compared to the default datasource can only SELECT.</p>
				</div>
			</div>
		</div>
		
		
		
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="##cfm" href="##collapsecfm">
				cfm
				</a>
			</div>
			<div id="collapsecfm" class="accordion-body collapse">
				<div class="accordion-inner">
					<pre>&lt;cfif StructKeyExists(form,"Save")>
	&lt;cfset State = CreateObject("component","State").init()>
	&lt;cfset State.Save(form)>
	&lt;cfset session.qryState = session.State.getStatesAndCountCities()>
&lt;cfelseif StructKeyExists(form,"Delete")>
	&lt;cfset session.State.Delete(form.StateID)>
	&lt;cfset session.qryState = session.State.getStatesAndCountCities()>
	&lt;cflocation url="Bootstrap2.cfm" addtoken="no">
&lt;cfelseif StructKeyExists(url,"StateID")>
	&lt;cfset qry = session.State.Read(url.StateID)>
	&lt;cfloop list="##qry.Columnlist##" index="FieldName">
		&lt;cfif NOT StructKeyExists(form,FieldName)>
			&lt;cfset form[FieldName] = HTMLEditFormat(qry[FieldName][1])>
		&lt;/cfif>
	&lt;/cfloop>
&lt;cfelse> &lt;!--- Defaults --->
	&lt;cfparam name="form.StateName" default="">
	&lt;cfparam name="form.Population" default="0">
	&lt;cfparam name="form.Statehood" default="#DateFormat(Now(),'mm/dd/yyyy')#">
	&lt;cfparam name="form.StateAbbr" default="">
	&lt;cfparam name="form.DivisionID" default="0">
	&lt;cfparam name="form.StateID" default="0">
&lt;/cfif>
&lt;cfif request.rtn>
	&lt;cflocation url="Bootstrap2.cfm" addtoken="no">
&lt;/cfif>
&lt;cfset qryCity = Application.City.Where("City_StateID",form.StateID)>

&lt;cfoutput>
&lt;cfinclude template="/Inc/html.cfm">
&lt;cfinclude template="/Inc/body.cfm">
&lt;fieldset>
	&lt;legend>State&lt;/legend>
	&lt;form method="post">
		&lt;label for="StateName">Name:&lt;/label>
		&lt;input name="StateName" id="StateName" value="#form.StateName#" autofocus>
		&lt;label for="Population">Population:&lt;/label>
		&lt;input type="number" name="Population" id="Population" value="#form.Population#">
		&lt;label for="Statehood">Statehood:&lt;/label>
		&lt;input type="date" name="Statehood" id="Statehood" value="#DateFormat(form.Statehood,'mm/dd/yyyy')#">
	
		&lt;label for="isState" class="checkbox">isState?
			&lt;input type="checkbox" name="isState" id="isState"
			&lt;cfif StructKeyExists(form,"isState") AND Val(form.isState)>
				checked
			&lt;/cfif>
		>
		&lt;/label>
		&lt;label for="StateAbbr">Abbr:&lt;/label>
		&lt;input name="StateAbbr" id="StateAbbr" maxlength="2" value="#StateAbbr#">
		&lt;label for="DivisionID">Division:&lt;/label>
		&lt;select name="DivisionID" id="DivisionID">
			&lt;cfloop query="Application.qryDivision">
				&lt;option value="#DivisionID#"&lt;cfif Application.qryDivision.DivisionID EQ form.DivisionID> selected&lt;/cfif>>#DivisionName#&lt;/option>
			&lt;/cfloop>
		&lt;/select>
		&lt;div class="form-actions">
			&lt;input type="submit" name="Save" value="Save">
			&lt;input type="submit" name="Cancel" value="Cancel">
			&lt;cfif qryCity.Recordcount>
				&lt;input type="submit" name="Delete" value="Delete" title="There are #qryCity.Recordcount# cities in #StateName#.
Are you sure you want to delete it?">
			&lt;cfelse>
				&lt;input type="submit" name="Delete" value="Delete" title="Delete #StateName#?">
			&lt;/cfif>
		&lt;/div>
		&lt;input type="hidden" name="StateID" value="#form.StateID#">
	&lt;/form>
					</pre>
				</div>
			</div>
		</div>

		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="##cfc" href="##collapsecfc">
				cfc
				</a>
			</div>
			<div id="collapsecfc" class="accordion-body collapse">
				<div class="accordion-inner">
		<pre>&lt;cfcomponent>
&lt;cffunction name="Init">
	&lt;cfreturn this>
&lt;/cffunction>

&lt;cffunction name="Save">
	&lt;cfargument name="form">
	&lt;cfset var local = {}>
	
	&lt;cfset request.msg = "">
	&lt;cfset request.rtn = true>
	&lt;cfif StructKeyExists(form,"isState")>
		&lt;cfset local.isState = 1>
	&lt;cfelse>
		&lt;cfset local.isState = 0>
	&lt;/cfif>
	&lt;cfif Val(form.StateID)>
		&lt;cftry>
			&lt;cfquery name="local.qry" datasource="MatrixSave">
			UPDATE State##session.qry.UsrID## SET
			 StateName = &lt;cfqueryparam cfsqltype="cf_sql_varchar" value="##form.StateName##">
			,Population = &lt;cfqueryparam cfsqltype="cf_sql_integer" value="##form.Population##">
			,Statehood = &lt;cfqueryparam cfsqltype="cf_sql_varchar" value="##form.Statehood##">
			,isState = &lt;cfqueryparam cfsqltype="cf_sql_integer" value="##local.isState##">
			,StateAbbr = &lt;cfqueryparam cfsqltype="cf_sql_char" value="##form.StateAbbr##">
			,State_DivisionID = &lt;cfqueryparam cfsqltype="cf_sql_integer" value="##form.DivisionID##">
			WHERE StateID = &lt;cfqueryparam cfsqltype="cf_sql_integer" value="##form.StateID##">;
			SELECT *
			FROM StateView
			WHERE StateID = &lt;cfqueryparam cfsqltype="cf_sql_integer" value="##form.StateID##">;
			&lt;/cfquery>
			&lt;cfcatch>
				&lt;cfset local.qry = QueryNew('Error')>
				&lt;cfset request.msg = Error(cfcatch)>
				&lt;cfset request.rtn = false>
			&lt;/cfcatch>
		&lt;/cftry>
	&lt;cfelse>
		&lt;cftry>
			&lt;cfquery name="local.qry" datasource="MatrixSave">
			INSERT INTO State##session.qry.UsrID##(StateName,Population,Statehood,isState,StateAbbr,State_DivisionID) VALUES
			(&lt;cfqueryparam cfsqltype="cf_sql_varchar" value="##form.StateName##">
			,&lt;cfqueryparam cfsqltype="cf_sql_integer" value="##form.Population##">
			,&lt;cfqueryparam cfsqltype="cf_sql_varchar" value="##form.Statehood##">
			,&lt;cfqueryparam cfsqltype="cf_sql_integer" value="##local.isState##">
			,&lt;cfqueryparam cfsqltype="cf_sql_char" value="##form.StateAbbr##" maxlength="2">
			,&lt;cfqueryparam cfsqltype="cf_sql_integer" value="##form.DivisionID##">
			);
			SELECT *
			FROM StateView
			WHERE StateID = Scope_Identity();
			&lt;/cfquery>
			&lt;cfcatch>
				&lt;cfset local.qry = QueryNew('Error')>
				&lt;cfset request.msg = Error(cfcatch)>
				&lt;cfset request.rtn = false>
			&lt;/cfcatch>
		&lt;/cftry>
	&lt;/cfif>
	&lt;cfreturn local.qry>
&lt;/cffunction>

&lt;cffunction name="Delete">
	&lt;cfargument name="StateID">
	
	&lt;cftry>
		&lt;cfquery datasource="MatrixSave">
		DELETE FROM State##session.qry.UsrID##
		WHERE StateID = &lt;cfqueryparam cfsqltype="cf_sql_integer" value="##arguments.StateID##">;
		&lt;/cfquery>
		&lt;cfcatch>
			&lt;cfset request.msg = Error(cfcatch)>
			&lt;cfset request.rtn = false>
		&lt;/cfcatch>
	&lt;/cftry>
&lt;/cffunction>

&lt;cffunction name="Error">
	&lt;cfargument name="form">
	&lt;cfset var local = {}>

	&lt;cfset local.result = arguments.form.Detail>
	&lt;cfset local.result = Replace(local.result,"[Macromedia]","","all")>
	&lt;cfset local.result = Replace(local.result,"[SQLServer JDBC Driver]","","all")>
	&lt;cfset local.result = Replace(local.result,"[SQLServer]","","all")>
	&lt;cfif FindNoCase("The DELETE statement conflicted with the REFERENCE constraint",local.result)>
		&lt;cfset local.result = "There are records that depend on this entry.  They need to be deleted first.">
	&lt;cfelseif local.result EQ "">
		&lt;cfset local.result = arguments.form.Message>
		&lt;cfset local.result = Replace(local.result,"The cause of this output exception was that:","","all")>
		&lt;cfset local.result = Replace(local.result,"coldfusion.runtime.locale.CFLocaleBase$InvalidDateTimeException:","","all")>
		&lt;cfset local.result = Replace(local.result,"..",".","all")>
	&lt;/cfif>
	&lt;cfif local.result EQ "">
		&lt;cfset local.result = "An unknown error has occurred.">
	&lt;/cfif>
	&lt;cfreturn local.result>
&lt;/cffunction>
&lt;/cfcomponent>
					</pre>
				</div>
			</div>
		</div>
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="##css" href="##collapsecss">
				css
				</a>
			</div>
			<div id="collapsecss" class="accordion-body collapse">
				<div class="accordion-inner">
				CSS by <a href="http://twitter.github.io/bootstrap/">Twitter Bootstrap</a>.
				</div>
			</div>
		</div>
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="##js" href="##collapsejs">
				js
				</a>
			</div>
			<div id="collapsejs" class="accordion-body collapse">
				<div class="accordion-inner">
					<pre>"use strict";
var request = {};
request.dom = {};

!function() {
	var local = {};
	
	var document = window.document;
	$('form').on('click','input:submit[name="Delete"][value="Delete"]',function() {
		return window.confirm(this.title || 'Delete this record?');
	});
	$('form').attr('method','post'); /* Any form will default to method="post" */
	$(document).on('mouseover', 'input:submit[name="Delete"]', function() {
		$(this).toggleClass('btn-danger');
	});
	$(document).on('mouseout', 'input:submit[name="Delete"]', function() {
		$(this).toggleClass('btn-danger');
	});
	$('body').removeAttr('hidden');
	local.type = 'post';
	local.dataType = 'json';
	local.cache = false;
	$.ajaxSetup(local);
}();

window.log = function(X){
	console.log( X );
};

!function() { // Before Bootstrap is run
	$('table').addClass('table table-striped table-bordered table-hover');
	$('input[type=submit]').addClass('btn');
	$('input[type=button]').addClass('btn');
	$('input[type=reset]').addClass('btn');
	$('input[name=Save]').addClass('btn-primary');
	$('##Save').addClass('btn-primary');
	$('button').addClass('btn');
}();
</pre>
				</div>
			</div>
		</div>
	</div>
</fieldset>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
