<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="fillSpace.css">
<cfinclude template="/Inc/body.cfm">
<h1>fillSpace</h1>
<div id="myAccordionResizer" class="ui-widget-content">
	<div id="myAccordion">
		<h1><a href="JavaScript:;">fillSpace</a></h1>
		<p>
			The accordion fills out the height of the containing div.
		</p>
		<cfinclude template="divAccordion.cfm">
	</div>
	<span class="ui-icon ui-icon-grip-dotted-horizontal"></span>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="fillSpace.js"></script>
<cfinclude template="/Inc/End.cfm">
