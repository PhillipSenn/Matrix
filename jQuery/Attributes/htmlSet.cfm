<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>html</h1>
<p>Paragraph One</p>
<p>Paragraph Two</p>
If you look at the source code (using Ctrl+U in Firefox), you'll see that the original text was:
<pre>
&lt;p>Paragraph One&lt;/p>
&lt;p>Paragraph Two&lt;/p>
</pre>
<cfinclude template="/Inc/foot.cfm">
<script src="htmlSet.js"></script>
<cfinclude template="/Inc/End.cfm">
