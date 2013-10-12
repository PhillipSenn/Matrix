</article>
<article id="Print">
	<h3>Print:</h3>
	<table class="border">
	</table>
</article>
<cfset local.Pagename = ListLast(cgi.SCRIPT_NAME,"/")>
<cfset local.Extension = ListLast(local.Pagename,".")>
<cfset local.Pagename = Left(local.Pagename,Len(local.Pagename)-Len(local.Extension)-1)>
<cfoutput>
<cfset jsSource = Application.Source.JavaScript()>
<cfset HTMLSource = Application.Source.CFM()>
<section id="SourceCode">
	<h3>#local.Pagename#.js:</h3>
	<article id="jsSource">#jsSource#</article>
	<h3>#local.Pagename#.cfm:</h3>
	<article id="HTMLSource">#HTMLSource#</article>
</section>
<cfinclude template="/Library/html/foot.cfm">
</cfoutput>