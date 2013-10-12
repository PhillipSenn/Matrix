<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>$(selector,context)</h1>
<p class="pointer">
	<span>Click on a paragraph, and I'll tell you how many spans are in that paragraph.</span>
</p>
<p class="pointer">
	<span>Span 2</span>
	<span>Span 3</span>
</p>
<p class="pointer">
	<span><a href="JavaScript:;">Span 4</a></span>
	<span>Span 5</span>
	<span>Span 6</span>
</p>
<cfinclude template="/Inc/foot.cfm">
<script src="jQuerySelectorContext.js"></script>
<cfinclude template="/Inc/End.cfm">
