<cfset request.jqm.Page = false>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<div data-role="dialog">
	<header data-theme="d">
		<h1>Dialog</h1>
	</header>
	<article data-theme="c">
		<h1>Delete this state?</h1>
		<p>Are you sure?</p>
		<a href="page-dialogs.html" data-role="button" data-rel="back" data-theme="b">Delete</a>       
		<a href="page-dialogs.html" data-role="button" data-rel="back" data-theme="c">Cancel</a>    
	</article>
</div>

<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>