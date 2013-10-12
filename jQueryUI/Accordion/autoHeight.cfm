<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>autoHeight</h1>
<div id="myAccordion">
	<h1><a href="JavaScript:;">autoHeight</a></h1>
	<p>
	If we had autoHeight turned off, then this panel would be as large as what's required to 
	display the Gettysburg address.
	</p>
	<cfinclude template="divAccordion.cfm">
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="autoHeight.js"></script>
<cfinclude template="/Inc/End.cfm">
