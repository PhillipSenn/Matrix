<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>jQuery.noConflict</h1>
Now my PRINT function stops working because it uses the $.
If I wrap it in: jQuery(function($) {}, then this script can't find it.
<cfinclude template="/Inc/foot.cfm">
<script src="noConflict.js"></script>
<cfinclude template="/Inc/End.cfm">
