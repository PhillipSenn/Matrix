<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>offLine</h1>
<p>There's no timer. This is just listening for two events: offline and online.</p>
It doesn't check when the page is loaded, only when there's a change. 
To check when the page loads, use navigator.onLine.
<cfinclude template="/Inc/foot.cfm">
<script src="offLine.js"></script>
<cfinclude template="/Inc/End.cfm">
