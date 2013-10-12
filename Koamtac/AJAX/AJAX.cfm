<cfinclude template="/Library/html/html.cfm">
<cfinclude template="/Library/Google/min/jQuery.cfm">
<link rel="stylesheet" type="text/css" href="AJAX.css">
<cfinclude template="/Library/html/body.cfm">
<label for="Location">Location:</label>
<input id="Location" name="Location">
<label for="Temperature">Temperature:</label>
<input id="Temperature" name="Temperature" value="0">
<table class="border">
	<thead>
		<tr>
			<th>Location</th>
			<th>Temperature</th>
			<th>Time</th>
		</tr>
	</thead>
	<tbody>
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
		<div id="koamtac-outputid"></div>
	</fieldset>
	<button id="btnTemperature" type="button">Temp</button>
	<button id="btnLocation" type="button">Location</button>
</div>
<a href="../Index.cfm">Home</a>
<div id="debug">
</div>
<cfinclude template="/Library/html/foot.cfm">
<script src="AJAX.js"></script>
<cfinclude template="/Library/html/End.cfm">
