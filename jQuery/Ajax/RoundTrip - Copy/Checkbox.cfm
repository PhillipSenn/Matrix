<cfoutput>
<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="Checkbox.css">
<cfinclude template="/Inc/body.cfm">
<h1>Round Trip</h1>
<div id="msgDiv">
	<span id="msg"></span>
</div>
<div id="pretend">
	<div>Pretend there is:</div>
	<input name="myChoice" type="radio" value="0" checked>No Error<br>
	<input name="myChoice" type="radio" value="1">a SQL Server Error (SELECT X FROM...)<br>
	<input name="myChoice" type="radio" value="2">a ColdFusion Error (datasource="X")<br>
	<input name="myChoice" type="radio" value="3">a function not found (JavaScript calls method:'X')<br>
	<input name="myChoice" type="radio" value="4">a component not found (JavaScript calls X.cfc)<br>
</div>
<div id="spinner">
	<img id="ajax-loader" src="../../Images/ajax-loader.gif">
</div>
<div id="States">
	<h2>State:</h2>
	<ul id="StateList">
		<cfloop query="Application.qryState">
			<li><a href="javascript:;" data-stateid="#StateID#" data-stateabbr="#StateAbbr#">#StateName#</a></li>
		</cfloop>
	</ul>
</div>
<div id="Cities">
	<h2 id="StateName">&nbsp;
	</h2>
	<table id="CityList" class="border">
		<thead>
			<tr>
				<th>City Name</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3">0 cities</td>
			</tr>
		</tfoot>
	</table>
</div>
<iframe id="GoogleMap" width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
	src="">
</iframe>
<br clear="all">
<p>I use <a href="http://www.coldfusionjedi.com/index.cfm/2010/11/9/Working-with-a-ColdFusion-Query-in-jQuery">queryFormat=column</a> to inspect the field names instead of the column numbers in the query result.</p>
<p>I use &lt;cfparam name=&quot;url.returnformat&quot; default=&quot;json&quot;&gt; in <a href="Checkbox.txt">Checkbox.cfc</a> to format the output as a <a href="http://json.org/">json</a> string, and mySetup.dataType='json';<br />
	in the JavaScript to expect the output in a json format.
	<br />
</p>
<p>I populate the unordered list of states with "data-stateid" and "data-stateabbr" (in lowercase) because the "data-" element
	is the preferred way to carry around data that doesn't need to be shown to the user.
	
	Field names coming back from ajax are in UPPER CASE, so be careful.
I "normalize" the JavaScript field names to be ColdFusion field names because that makes me more comfortable.</p>
<p>I build an array of rows using a <a href="http://books.google.com/books?id=7kfyzf2BnP0C&lpg=PP1&dq=jquery%20cookbook&pg=PA112##v=onepage&q&f=false">bare metal loop</a>, and then after the entire array has been built, 
	I use innerHTML to assign it to the DOM. </p>
<p>I got the data from <a href="http://labs.adobe.com/technologies/spry/samples/data_region/DataSetMasterDetailSample.html">Adobe Spry</a>.</p>
<p>I had to use .delegate('a','click' instead of simply .click because the list of cities is being created when the user clicks on a state.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="Checkbox.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>