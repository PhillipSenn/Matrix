<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfinclude template="/Inc/intro.cfm">
<div id="supportingText">
	<div id="explanation">
		<h3><span>parseFloat</span></h3>
		<p class="p1"><span>
			function VAL(str) {
				var f = parseFloat(str);
				return isNaN(f) ? 0 : f;
			}
			
			log("VAL('A1'): " + VAL('A1'));
			log("VAL('1A'): " + VAL('1A'));
		</span></p>
		<p class="p2"><span>
		</span></p>
	</div>
	<cfinclude template="/Inc/participation.cfm">
</div>
<cfinclude template="/Inc/linkList.cfm">
<cfinclude template="/Inc/foot.cfm">
<script src="parseFloat.js"></script>
<cfinclude template="/Inc/End.cfm">
