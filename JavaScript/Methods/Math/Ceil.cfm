<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfinclude template="/Inc/intro.cfm">
<div id="supportingText">
	<div id="explanation">
		<h3><span>Ceiling</span></h3>
		<p class="p1"><span>
			$('#explanation .p2').html('The ceiling of 3.14 is: ' + Math.ceil(3.14) + '&lt;br>'
				+ 'The ceiling of -3.14 is: ' + Math.ceil(-3.14));
		</span></p>
		<p class="p2"><span>
		</span></p>
	</div>
	<cfinclude template="/Inc/participation.cfm">
</div>
<cfinclude template="/Inc/linkList.cfm">
<cfinclude template="/Inc/foot.cfm">
<script src="Ceil.js"></script>
<cfinclude template="/Inc/End.cfm">
