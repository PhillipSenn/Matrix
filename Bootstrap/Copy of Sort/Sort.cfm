<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table class="sortable table table-striped table-bordered">
	<thead>
		<tr>
			<th class="sort-alpha">
				<div class="btn-group">
					<a class="tableHeader btn btn-success" href="JavaScript:;">
						<i class="icon-white icon-chevron-up"></i> Fabric
					</a>
					<a class="btn btn-success dropdown-toggle" href="JavaScript:;" data-toggle="dropdown">
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="lock" href="JavaScript:;"><i class="icon-lock"></i> Fabric</a></li>
					</ul>
				</div>
			</th>
			<th class="sort-numeric">
				<div class="btn-group" style="float:right">
					<a class="tableHeader btn" href="JavaScript:;">
						Qty
					</a>
				</div>
			</th>
			<th class="sort-date">
				<div class="btn-group">
					<a class="tableHeader btn" href="JavaScript:;">
						Date
					</a>
				</div>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>A</td>
			<td class="num">10</td>
			<td>1/1/2013</td>
		</tr>
		<tr>
			<td>B</td>
			<td class="num">30</td>
			<td>1/1/2012</td>
		</tr>
		<tr>
			<td>C</td>
			<td class="num">20</td>
			<td>1/1/2011</td>
		</tr>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<script src="Sort.js"></script>
<script src="Sortable.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>
