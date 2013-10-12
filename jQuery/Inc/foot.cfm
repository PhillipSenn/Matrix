	<cfoutput>
	<cfset Pagename = ListLast(cgi.SCRIPT_NAME,"/")>
	<cfset Extension = ListLast(Pagename,".")>
	<cfset Pagename = Left(Pagename,Len(Pagename)-Len(Extension)-1)>
	<cfset jsSource = Application.Source.JavaScript()>
	<cfset HTMLSource = Application.Source.CFM()>
	<div id="PRINT">
		<hr>
		<h3>Output:</h3>
	</div>
	<hr>
	<cfif jsSource NEQ "">
		<hr>
		<h3>JavaScript:</h3>
		<div id="jsSource">#jsSource#</div>
	</cfif>
	<h3>HTML:</h3>
	<label for="relevant" class="checkbox">Show only relevant HTML
	<input type="checkbox" id="relevant" checked>
	</label>
	<div id="HTMLSource">#HTMLSource#</div>

	</cfoutput>
</section>
<cfinclude template="/Library/Inc/foot.cfm">
<cfoutput>
<script src="/Library/js/PrettyPrint/PrettyPrint.js"></script>
<script src="/Library/js/PrettyPrint/Print.js"></script>
<script src="#Application.home.dir#js/Matrix.js"></script>
</cfoutput>

