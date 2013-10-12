<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Closure</h1>
Here you can see that a function is declared, but what is returned is not a value, but a function.
So when myFunction is called, it's actually executing the anonymous function that was it's return value.
The variable 'i' is in the closure scope in Firebug.
myFunction is declared in the global scope, as well as the variable X.
<cfinclude template="/Inc/foot.cfm">
<script src="Closure.js"></script>
<cfinclude template="/Inc/End.cfm">
