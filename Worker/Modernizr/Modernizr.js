<!--- html.cfm --->
<cfset request.Modernizr = false>
<cfset request.Manifest = true>
<cfset request.jQuery = false>
<cfset request.jQueryUI = true>
<cfset request.jQueryUITheme = "le-frog">

<!--- Bootstrap.cfm --->
<cfset request.Bootstrap = false>
<cfset request.Responsive = false>

<!--- container-fluid.cfm --->
<cfset request.alert = "success">

<!--- foot.cfm --->
<cfset request.TableSorter = false>

<!--- onRequestStart --->
<cfset request.msg = "">
<cfset request.rtn = false>

<!--- jqm --->
<cfset request.title = "">
<cfset request.footer = "">
<cfset request.theme = "">
<cfset request.header = "">
<!--- /jqm --->


<cfset qryxxx = Application.xxx.Read(xxxID)>
<cfset qryxxx = Application.xxx.Where("yyyID",yyyID)>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<ul>
	<li><a href="xxx.cfm?xxxID=#xxxID#"></a></li>
	<li><a href=".cfm"></a></li>
	<li><a href=""></a></li>
	<li><a href=""></a></li>
</ul>
<form action="xxxAction.cfm">
	<label for="xxxName">xxx:</label>
	<input id="xxxName" name="xxxName">
	<label for="xxxDesc">Description:</label>
	<textarea id="xxxDesc" name="xxxDesc" class="span12" rows="10"></textarea>
	<label for="xxxSort">Sort:</label>
	<input type="number" id="xxxSort" name="xxxSort">
	<div class="form-actions">
		<input type="submit" name="Save" value="Save">
		<input type="submit" name="Cancel" value="Cancel">
	</div>
</form>
<table>
	<thead>
		<tr>
			<th class="num">Row</th>
			<th class="num">Sort</th>
			<th>xxx</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryxxx">
			<tr>
				<td class="num">#CurrentRow#</td>
				<td class="num">#xxxSort#</td>
				<td>#xxxName#</td>
				<td>#xxxDesc#</td>
			</tr>
		</cfloop>
	</tbody>
	<tfoot>
		<tr>
			<td class="num">#qryxxx.Recordcount#</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tfoot>
</table>
<cfinclude template="/Inc/foot.cfm">
<script src="xxx.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>
