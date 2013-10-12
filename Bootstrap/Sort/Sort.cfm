<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table class="sortable table table-striped table-bordered" width="100%">
	<thead>
		<tr>
			<th width="53%" class="btn-group sort-alpha"> <a class="btn" href="JavaScript:;">Fabric</a> <a class="btn" href="JavaScript:;"> <i class="icon-black icon-chevron-up"></i> </a> </th>
			<th width="11%" class="btn-group num"> <!--- todo: float:right breaks the look of a btn-group.  I tried using th align="right" and th class="num" and div style="text-align:right". --->
				<a class="btn" href="JavaScript:;"> Qty </a> <a class="btn" href="JavaScript:;"> <i class="icon-"></i> </a> </th>
			<th width="36%" class="btn-group sort-date"> <a class="btn" href="JavaScript:;"> Date </a> <a class="btn" href="JavaScript:;"> <i class="icon-"></i> </a> </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>A</td>
			<td class="num">10</td>
			<td>1/1/2011</td>
		</tr>
		<tr>
			<td>B</td>
			<td class="num">30</td>
			<td>1/1/2011</td>
		</tr>
		<tr>
			<td>C</td>
			<td class="num">20</td>
			<td>1/1/2011</td>
		</tr>
		<tr>
			<td>D</td>
			<td class="num">40</td>
			<td>1/1/2041</td>
		</tr>
		<tr>
			<td>E</td>
			<td class="num">50</td>
			<td>1/1/2051</td>
		</tr>
		<tr>
			<td>F</td>
			<td class="num">60</td>
			<td>1/1/2061</td>
		</tr>
	</tbody>
</table>
When you first come in, it's sorted by fabric, but the column is not locked.
If you click on a column, that means you're locking that column.
<p>If you click on another column, then I assume you're adding more to the criteria.</p>
<p>If you want to unlock a column, click on the column name.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="Sort.js"></script>
<script src="Sortable.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput> 