<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Lexical</h1>
Because we are returning f() with a parenthesis, myFunction is returning the return value of the f function.
And since myFunction initializes 'i', then f() will always return 101.
<cfinclude template="/Inc/foot.cfm">
<script src="Lexical.js"></script>
<cfinclude template="/Inc/End.cfm">
