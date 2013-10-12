<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Self executing Function Definition</h1>
<p>The open parenthesis before function is required because without it, the JavaScript interpreter tries
	to parse the function keywords as a function declaration statement.
</p>
<p>With the parenthesis, the interpreter correctly recognizes this as a function definition expression.
</p>
<cfinclude template="/Inc/foot.cfm">
	<script src="FunctionDefinition.js"></script>
<cfinclude template="/Inc/End.cfm">
