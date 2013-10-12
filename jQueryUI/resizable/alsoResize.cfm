<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>alsoResize</h1>
<div id="myResizer" class="tile ui-widget-content">
	<div>My id is: myResizer. You can resize me.</div>
</div>
<div id="myID" class="tile ui-widget-content">
	<div>my id is: myID.  I'll also resize when you resize the other box.</div>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="alsoResize.js"></script>
<cfinclude template="/Inc/End.cfm">
