<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1><span>Variable hoisting</span></h1>
JavaScript scans through the function on a first pass to declare any variables that are declared anywhere within the function.
It then executes the function.  So any variables used before the var statement will be declared as undefined.
<cfinclude template="/Inc/foot.cfm">
<script src="001.js"></script>
<cfinclude template="/Inc/End.cfm">
