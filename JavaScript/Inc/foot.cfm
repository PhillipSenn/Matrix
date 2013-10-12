	<cfoutput>
	<cfset Pagename = ListLast(cgi.SCRIPT_NAME,"/")>
	<cfset Extension = ListLast(Pagename,".")>
	<cfset Pagename = Left(Pagename,Len(Pagename)-Len(Extension)-1)>
	<cfset jsSource = Application.Source.JavaScript()>
	<cfset HTMLSource = Application.Source.CFM()>
	<cfif jsSource NEQ "">
		<hr>
		<h3>JavaScript:</h3>
		<div id="jsSource">#jsSource#</div>
	</cfif>
	<div id="PRINT">
	</div>
	<hr>
	<h3>HTML:</h3>
	<label for="relevant" class="checkbox">Show only relevant HTML
	<input type="checkbox" id="relevant" checked>
	</label>
	<div id="HTMLSource">#HTMLSource#</div>

	</cfoutput>
</div> <!-- container-fluid -->
<cfoutput>
<cfparam name="request.TableSorter" default="true">
<cfif request.TableSorter>
<script src="/Library/js/tableSorter.js"></script>
<script src="/Library/jQuery/TableSorter/jquery.tablesorter.js"></script>
</cfif>
<script src="/Library/js/foot.js"></script>
<script src="/Library/js/PrettyPrint/PrettyPrint.js"></script>
<script src="/Library/js/PrettyPrint/Print.js"></script>
</cfoutput>

