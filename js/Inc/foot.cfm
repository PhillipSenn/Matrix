	<cfoutput>
	<cfset JavaScriptCode = Application.Source.JavaScript()>
	<article id="Print">
		<h3>Print:</h3>
		<table class="border">
		</table>
	</article>
	<cfset local.Pagename = ListLast(cgi.SCRIPT_NAME,"/")>
	<cfset local.Extension = ListLast(local.Pagename,".")>
	<cfset local.Pagename = Left(local.Pagename,Len(local.Pagename)-Len(local.Extension)-1)>
	<h3>#local.Pagename#.js</h3>
	<div id="SourceCode">
		#JavaScriptCode#
	</div>
	<cfset HTMLCode = Application.Source.CFM()>
	<h3>#local.Pagename#.cfm:</h3>
	<div id="HTMLSource">
		#HTMLCode#
	</div>
</div>
<script src="http://www.google.com/jsapi"></script>
<script>
google.load("jquery", "1");
google.load("jqueryui", "1");
</script>
<script src="/Matrix/jQuery/Inc/js/PRINT.js"></script>
</cfoutput>
