<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>navigation</h1>
<div id="myAccordion">
	<cfinclude template="divAccordion.cfm">
	<h1><a href="JavaScript:;">navigation</a></h1>
	<div>Navigate to: <a href="#myID">myID</a></div>
</div>
<p>Navigate to: <a href="#myID">myID</a>
(This does not open up the navigation panel, but coming into the page with #myID does.)
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p id="myID">myID way down the page</p>
<cfinclude template="/Inc/foot.cfm">
<script src="navigation.js"></script>
<cfinclude template="/Inc/End.cfm">
