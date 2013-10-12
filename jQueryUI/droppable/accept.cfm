<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="accept.css">
<cfinclude template="/Inc/body.cfm">
<div class="tile ui-widget-content" id="PlayArea">
	<div class="ui-widget-header">Play Area</div>
	<p>You'll notice that my font changes upon being hovered over.</p>
</div>
<br clear="all">
<div class="tile ui-widget-content" id="bad">
	<div class="ui-widget-header">Drag me around</div>
	But I can't be dropped.
</div>

<div class="tile ui-widget-content" id="good">
	<div class="ui-widget-header">Drag me around</div>
	And you can drop me.
</div>

<cfinclude template="/Inc/foot.cfm">
<script src="accept.js"></script>
<cfinclude template="/Inc/End.cfm">
