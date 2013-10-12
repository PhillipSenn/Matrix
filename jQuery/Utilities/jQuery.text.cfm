<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>jQuery.text()</h1>
<p>This is <a href="http://addyosmani.com/jqprovenperformance/">performance tip #10</a> mentioned by Addy Osmani</a>.</p>
<p>It requires a jQuery object as a parameter, which means you can't simply supply a selector like 'p'.</p>
<p>You would use $.text(X) instead of X.text() if X were a jQuery object.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="jQuery.text.js"></script>
<cfinclude template="/Inc/End.cfm">
