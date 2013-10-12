<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>createDocumentFragment</h1>
<ul id="myUL">
</ul>
Instead of appending to the DOM inside a loop, create a document fragment, append to it
and then append to the DOM only once.
<cfinclude template="/Inc/foot.cfm">
<script src="createDocumentFragment.js"></script>
<cfinclude template="/Inc/End.cfm">
