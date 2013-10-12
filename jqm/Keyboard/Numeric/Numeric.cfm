<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<table align="center" border="0">
			<tr>
				<td width="40%" align="center"><label><strong>Please Press Number</strong></label></td>
				<td align="left"><span id="typeMessage"></span></td>
			</tr>
			<tr>
				<td colspan="3">
					<div data-role="controlgroup" data-type="horizontal" align="center">
						<input type="button" value="1">
						<input type="button" value="2">
						<input type="button" value="3">
						<input type="button" value="4">
						<input type="button" value="5">
						<input type="button" value="6">
						<input type="button" value="7">
						<input type="button" value="8">
						<input type="button" value="9">
						<input type="button" value="0">
						<input type="button" value="Delete" data-icon="back">
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="button" value="Set Number" data-theme="b">
				</td>
			</tr>
		</table>
	</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
