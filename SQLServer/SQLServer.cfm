<cfset DefaultCat = "Select,Insert,Update,Delete,Where,Order By,Group By,Select All">
<cfparam name="url.Usage" default="Intro,Begin,Inter,Adv">
<cfparam name="url.Cat" default="#DefaultCat#">
<cfif url.usage EQ "All">
	<cfset url.Usage = "Intro,Begin,Inter,Adv,Select All">
</cfif>
<cfif url.Cat EQ "All">
	<cfset url.Cat = DefaultCat>
</cfif>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<title>SQL Server Matrix</title>
<cfinclude template="/Inc/body.cfm">
<table>
	<thead>
	<tr>
		<th scope="col">Category</th>
		<th scope="col">SubCat</th>
		<th scope="col">Usage</th>
		<th scope="col">
			<div class="floatleft">Example</div>
			<div class="floatright ui-state-default ui-corner-all">
				<span class="ui-icon ui-icon-circle-triangle-n"></span>
			</div>
		</th>
		<th scope="col">Description</th>
	</tr>
	</thead>
	<tbody>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>001</td>
			<td><a href="Select/Select/001.cfm">SELECT * FROM State</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Group</td>
			<td>Begin</td>
			<td>002</td>
			<td><a href="Select/Group/002.cfm">Group by StateName</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Group</td>
			<td>Begin</td>
			<td>003</td>
			<td><a href="Select/Group/003.cfm">Sum and Avg</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Group</td>
			<td>Begin</td>
			<td>004</td>
			<td><a href="Select/Group/Having/004.cfm">HAVING</a></td>
		</tr>
		
		<tr>
			<td>Create</td>
			<td>Table</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Create/Table/Division.cfm">Drop/Create Table Division</a></td>
		</tr>
		
		<tr>
			<td>Create</td>
			<td>Table</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Create/Table/State.cfm">Drop/Create Table State</a></td>
		</tr>
		
		<tr>
			<td>Create</td>
			<td>Table</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Create/Table/City.cfm">Drop/Create Table City</a></td>
		</tr>
		
		<tr>
			<td>Create</td>
			<td>View</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Create/View/DivisionView.cfm">Drop/Create View DivisionView</a></td>
		</tr>
		
		<tr>
			<td>Create</td>
			<td>View</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Create/View/StateView.cfm">Drop/Create View StateView</a></td>
		</tr>

		<tr>
			<td>Create</td>
			<td>View</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Create/View/CityView.cfm">Drop/Create View CityView</a></td>
		</tr>
		
		<tr>
			<td>Select</td>
			<td>Group</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Select/Group/Order/Count.cfm">ORDER BY COUNT(*)</a></td>
		</tr>
		
		<tr>
			<td>Select</td>
			<td>JOIN</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Select/Join/Outer/Left.cfm">LEFT JOIN (SELECT</a></td>
		</tr>
		
		<tr>
			<td>Select</td>
			<td>ORDER</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Select/Order/NEWID.cfm">Random</a></td>
		</tr>
		
		<tr>
			<td>Create</td>
			<td>Index</td>
			<td>Int</td>
			<td>&nbsp;</td>
			<td><a href="Create/Index/Clustered.cfm">Clustered Index</a></td>
		</tr>
		
		<tr>
			<td>Select</td>
			<td>Count</td>
			<td>Int</td>
			<td>&nbsp;</td>
			<td><a href="Select/Group/Count/Distinct.cfm">Select COUNT(Distinct</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Over</td>
			<td>Inter</td>
			<td>&nbsp;</td>
			<td><a href="Select/Order/Rank.cfm">Rank &amp; Dense Rank</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Join</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="Select/Select/UnionAll.cfm">UNION ALL</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>&nbsp;</td>
			<td><a href="Select/Order/Over.cfm">Percent Total</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td><a href="Select/Where/IN.cfm">IN</a> (with SELECT)</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td><a href="Select/Join/SubSelect.cfm">JOIN</a> (with Sub SELECT)</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>&nbsp;</td>
			<td><a href="Select/Order/Partition.cfm">PARTITION</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>&nbsp;</td>
			<td><a href="Select/Order/Row-Number.cfm">Row_Number()</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Pivot</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td><a href="Select/Pivot/Pivot.cfm">Pivot</a></td>
		</tr>

		<!---
		<tr>
			<td>Delete</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>003</td>
			<td><a href="003/003.cfm">DELETE Duplicates using a cte</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>008</td>
			<td><a href="008/008.cfm">PIVOT</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>009</td>
			<td><a href="009/009.cfm">UnPivot</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>010</td>
			<td><a href="010/010.cfm">Common Table Expression</a> (ROW_NUMBER)</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>012</td>
			<td><a href="012/012.cfm">INTERSECT</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>013</td>
			<td><a href="013/013.cfm">Self join</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>014</td>
			<td><a href="014/014.cfm">With Rollup</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>015</td>
			<td><a href="015/015.cfm">Top(1) Percent</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>016</td>
			<td><a href="016/016.cfm">FULL OUTER JOIN</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>017</td>
			<td><a href="017/017.cfm">CROSS JOIN</a> (multiplication)</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>018</td>
			<td><a href="018/018.cfm">Theta &Theta; join</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>019</td>
			<td><a href="019/019.cfm">Full set difference</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>020</td>
			<td><a href="020/020.cfm">TOP WITH TIES</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>021</td>
			<td><a href="021/021.cfm">Scalar subquery</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>022</td>
			<td><a href="022/022.cfm">Row Constructors</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>023</td>
			<td><a href="023/023.cfm">IN operator</a> with constants</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>024</td>
			<td><a href="024/024.cfm">Nesting aggregations using common table expression</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>025</td>
			<td><a href="025/025.cfm">Nesting aggregations using a subquery</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>026</td>
			<td><a href="026/026.cfm">SOME</a> (ANY)</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Where</td>
			<td>Begin</td>
			<td>027</td>
			<td><a href="027/027.cfm">correlated subqueries</a> (EXISTS)</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>028</td>
			<td><a href="028/028.cfm">Relational division</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>Group</td>
			<td>Begin</td>
			<td>029</td>
			<td><a href="029/029.cfm">Grouping sets</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>030</td>
			<td><a href="030/030.cfm">Including non-aggregate descriptive columns</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>031</td>
			<td><a href="031/031.cfm">Cube</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>032</td>
			<td><a href="032/032.cfm">Crosstab using CASE</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>033</td>
			<td><a href="033/033.cfm">Cumulative Totals (Running Sums)</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>034</td>
			<td><a href="034/034.cfm">Cumulative Totals (T-SQL cursor solution)</a></td>
		</tr>
		<tr>
			<td>Insert</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>035</td>
			<td><a href="035/035.cfm">Multiple rows inserted with 1 insert statement.</a></td>
		</tr>
		<tr>
			<td>Insert</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>036</td>
			<td><a href="036/036.cfm">Insert from a stored procedure</a></td>
		</tr>
		<tr>
			<td>Insert</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>037</td>
			<td><a href="037/037.cfm">Creating a table with an Insert statement</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>038</td>
			<td><a href="038/038.cfm">Computed Columns</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>039</td>
			<td><a href="039/039.cfm">Cross Apply</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>040</td>
			<td><a href="040/040.cfm">Outer Apply</a></td>
		</tr>
		<tr>
			<td>Logic</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>041</td>
			<td><a href="041/041.cfm">CASE </a></td>
		</tr>
		<tr>
			<td>Logic</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>042</td>
			<td><a href="042/042.cfm">Boolean CASE</a></td>
		</tr>
		<tr>
			<td>Constraint</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>043</td>
			<td><a href="043/043.cfm">Check constraint</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>044</td>
			<td><a href="044/044.cfm">EXCEPT</a></td>
		</tr>
		<tr>
			<td>Update</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>045</td>
			<td><a href="045/045.cfm">Update from a second table</a></td>
		</tr>
		<tr>
			<td>Logic</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>046</td>
			<td><a href="046/046.cfm">While</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>047</td>
			<td><a href="047/047.cfm">NTILE</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>048</td>
			<td><a href="048/048.cfm">Count(DISTINCT CityName)</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>049</td>
			<td><a href="049/049.cfm">Sum, Avg, Min, Max, Std Deviation, Variance, Count</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>050</td>
			<td><a href="050/050.cfm">Static Function</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>051</td>
			<td><a href="051/051.cfm">FOR XML</a></td>
		</tr>
		<tr>
			<td>Delete</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>052</td>
			<td><a href="052/052.cfm">Delete duplicates using primary key value</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Inter</td>
			<td>053</td>
			<td><a href="053/053.cfm">Table Variable</a></td>
		</tr>
		<tr>
			<td>Logic</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>054</td>
			<td><a href="054/054.cfm">While loop</a> (with break)</td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>055</td>
			<td><a href="055/055.cfm">ALL</a></td>
		</tr>
		<tr>
			<td>Select</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>056</td>
			<td>Create a comma separated list of cities</td>
		</tr>
		--->
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>