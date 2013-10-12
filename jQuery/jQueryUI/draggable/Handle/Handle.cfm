<cfoutput>
<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="Handle.css">
<cfinclude template="/Inc/body.cfm">
<div class="tile ui-widget-content">
	<div class="ui-widget-header">Drag me around</div>
	<div class="myClass">But only the header, not by the content.</div>
</div>

<div class="tile ui-widget-content">
	<div class="ui-widget-header">Drag me around</div>
	<div class="myClass">But only the header, not by the content.</div>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="Handle.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>
