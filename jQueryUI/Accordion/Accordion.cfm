<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>accordion</h1>
<div id="myAccordion">
	<h1><a href="JavaScript:;">Theme</a></h1>
	<p>
		This accordion example uses the "base" theme.
		myAccordion has a font size of 62.5%.
		The headers have to be hyperlinks in order to be styled with a margin-left.
	</p>
	<cfinclude template="divAccordion.cfm">
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="accordion.js"></script>
<cfinclude template="/Inc/End.cfm">
