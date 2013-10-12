<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Global Closure</h1>
We've moved everything into an anonymous function, so now i is no longer in the closure scope, but in the 'this'
scope of the anonymous function.
<cfinclude template="/Inc/foot.cfm">
<script src="GlobalClosure.js"></script>
<cfinclude template="/Inc/End.cfm">
