<cfset outputid = "">
<cfset beeps = 0>
<cfif StructKeyExists(form,"ItemNo")>
	<cfset outputid = "You scanned: #form.ItemNo#!">
	<cfset beeps = 2>
</cfif>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="Scenarios.css">
<cfinclude template="/Inc/body.cfm">
<div data-role="header">
	<h1>1 barcode, 1 submit</h1>
</div>
<div data-role="content">
	Purpose: test the new KoamTac function.
	<form method="post">
		<div data-role="fieldcontain">
			<label for="ItemNo">Item:</label>
			<input id="ItemNo" name="ItemNo" autofocus>
		</div>
		<p>
			<input id="Save" type="submit" value="Save" data-inline="true" data-theme="b">
		</p>
		<a rel="external" data-role="button" href="../iOS.cfm" data-theme="a">Home</a>
	</form>
	<div id="koamtac-id">
		<div id="koamtac-outputid">#outputid#</div>
		<cfif beeps EQ 2>
			<div id="koamtac-beeps">2</div>
			<div class="koamtac-beep">
				<div class="koamtac-beepon">100</div>
				<div class="koamtac-beepoff">0</div>
				<div class="koamtac-repeat">1</div>
				<div class="koamtac-volume">Low</div>
			</div>
			<div class="koamtac-beep">
				<div class="koamtac-beepon">100</div>
				<div class="koamtac-beepoff">0</div>
				<div class="koamtac-repeat">1</div>
				<div class="koamtac-volume">High</div>
			</div>
		</cfif>
		<div id="koamtac-classes">1</div>
		<div class="koamtac-class">
			<div class="koamtac-inputid">ItemNo</div>
			<div class="koamtac-clickid">Save</div>
		</div>
		<input name="B" id="koamtac-B" value="Read battery level">
		<input name="bT0" id="koamtac-bT0" value="Read Bluetooth options">
		<input name="bT70" id="koamtac-bT70" value="auto power off timeout value">
		<input name="bTO0" id="koamtac-bTO0" value="auto power on delay time">
		<input name="c" id="koamtac-c" value="Read date and time">
		<input name="GTG" id="koamtac-GTG" value="Read termination character">
		<input name="GtGD" id="koamtac-GtGD" value="Get Auto Trigger Reread Delay">
		<input name="h" id="koamtac-h" value="Read handshake mode">
		<input name="I" id="koamtac-I" value="Read minimum barcode length">
		<input name="M" id="koamtac-M" value="Read serial number">
		<input name="o" id="koamtac-o" value="Read barcode option">
		<input name="s" id="koamtac-s" value="Read selected symbology">
		<input name="t" id="koamtac-t" value="Read timeout value">
		<input name="u" id="koamtac-u" value="Read data process mode">
		<input name="V" id="koamtac-V" value="Read firmware version">
		<input name="z" id="koamtac-z" value="Read security level">
		<input id="koamtac-loadedid" value="KoamTac loaded" type="button">
	</div>
	<p>This communicates both to and from the scanner.</p>
	<p>It does so by submitting the form.<br>
		You can cache the page on the iPad so that if there is no Internet connection, the page will load.<br>
		The workflow is: 
		<ol>
			<li>Save the barcode to a local database</li>
			<li>Save anything that needs to be displayed on the koamtac into localStorage</li>
			<li>Submit the form</li>
			<li>Read from localStorage and populate the appropriate koamtac fields</li>
		</ol>
		Periodically check the Internet connect and see if anything needs to be uploaded to the Server.
		If online and there is a need to sync, then sync.
	</p>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="koamtac.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>
