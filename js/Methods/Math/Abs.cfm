<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfinclude template="/Inc/intro.cfm">
<div id="supportingText">
	<div id="explanation">
		<h3><span>Abs</span></h3>
		<p class="p1"><span>
			X = prompt("Please enter a number, positive or negative: ","-10");
			$('#explanation .p2').text('The absolute value of ' + X + ' is: ' + Math.abs(X));
		</span></p>
		<p class="p2"><span>
		</span></p>
	</div>
	<cfinclude template="/Inc/participation.cfm">
</div>
<cfinclude template="/Inc/linkList.cfm">
<cfinclude template="/Inc/foot.cfm">
<script src="Abs.js"></script>
<cfinclude template="/Inc/End.cfm">
