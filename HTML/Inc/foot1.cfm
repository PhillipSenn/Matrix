	</section>
</article>
<cfset SourceCode = Application.Source.CFM()>

<cfoutput>
<article id="SourceCodeArticle">
	<h3>Source code:</h3>
	<section id="HTMLSource">
		#SourceCode#
	</section>
</article>
<cfinclude template="/Library/html/foot.cfm">
</cfoutput>
