<cfset outputid = "">
<cfif StructKeyExists(form,"btnTemperature")>
	<cfset CreateObject("component","ServerSide").Save(form)>
	<cfset outputid = "Scan Location">
<cfelseif StructKeyExists(form,"btnLocation")>
	<cfset CreateObject("component","ServerSide").Save(form)>
	<cfset outputid = "Scan Temperature">
</cfif>
<cfset qryDistillery = CreateObject("component","ServerSide").View1()>

<cfoutput>
<cfinclude template="/Library/html/html.cfm">
<cfinclude template="/Library/Google/min/jQuery.cfm">
<link rel="stylesheet" type="text/css" href="ServerSide.css">
<cfinclude template="/Library/html/body.cfm">
<cfform preservedata="yes">
	<label for="Location">Location:</label>
	<cfinput name="Location">
	<label for="Temperature">Temperature:</label>
	<cfinput name="Temperature">
	<table class="border">
		<thead>
			<tr>
				<th>Location</th>
				<th>Temperature</th>
				<th>Time</th>
			</tr>
		</thead>
		<tbody>
		<cfloop query="qryDistillery">
			<tr>
				<td>#Location#</td>
				<td class="num">#Temperature#</td>
				<td>#DistilleryDateTime#</td>
			</tr>
		</cfloop>
		</tbody>
	</table>
	<div id="koamtac-id">
		<div id="koamtac-classes">2</div>
		<div class="koamtac-class">
			<div class="koamtac-inputid">Temperature</div>
			<div class="koamtac-clickid">btnTemperature</div>
		</div>
		<div class="koamtac-class">
			<div class="koamtac-regex">L.*</div>
			<div class="koamtac-inputid">Location</div>
			<div class="koamtac-clickid">btnLocation</div>
		</div>
		<fieldset>
			<legend>koamtac-outputid</legend>
			<div id="koamtac-outputid">#outputid#</div>
		</fieldset>
		<cfinput name="btnTemperature" type="submit" value="Temperature">
		<cfinput name="btnLocation" type="submit" value="Location">
	</div>
</cfform>
<a href="../Index.cfm">Home</a>
<cfinclude template="/Library/html/foot.cfm">
<script src="ServerSide.js"></script>
<cfinclude template="/Library/html/End.cfm">
</cfoutput>
