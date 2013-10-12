</article>
<article id="Print">
	<h3>Print:</h3>
	<table class="border">
	</table>
</article>
<cfoutput>
<cfset Pagename = ListLast(cgi.SCRIPT_NAME,"/")>
<cfset jsSource = Application.Source.JavaScript()>
<cfset HTMLSource = Application.Source.CFM()>

<section id="SourceCode">
	<cfif Len(jsSource)>
		<h3>#ReplaceNoCase(Pagename,'.cfm','.js')#:</h3>
		<article id="jsSource">#jsSource#</article>
	</cfif>
	<h3>#Pagename#:</h3>
	<article id="HTMLSource">#HTMLSource#</article>
</section>
<cfinclude template="/Matrix/Inc/GooglePlus1.cfm">
<cfinclude template="/Library/html/foot.cfm">
</cfoutput>