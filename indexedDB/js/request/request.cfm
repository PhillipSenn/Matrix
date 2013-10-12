<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
"request" is a variable name I came up with.
I decided to use "request" to connote the scope of the entire page, including all .js files.
JavaScript calls it the window scope, or the global scope.

So I have a single variable, "request" that's in the window scope: window.request.

The name was inspired by the ColdFusion request scope, which has a lifespan of the entire
request of the web page: .cfm, .cfc, custom tags, from beginning to end.
<cfinclude template="/Inc/foot.cfm">
<script src="request.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>
