<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>$(element)</h1>
<p>Variable A contains a jQuery object with both paragraph elements in it.</p>
<p>Variable B contains a jQuery object with the second paragraph in it.  A[1] is the second paragraph DOM element.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="jQueryElement.js"></script>
<cfinclude template="/Inc/End.cfm">
