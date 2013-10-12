<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfinclude template="/Inc/intro.cfm">
<div id="supportingText">
	<div id="explanation">
		<h3><span>parseInt</span></h3>
		<p class="p1"><span>
			function INT(str) {
				var i = parseInt(str);
				return isNaN(i) ? 0 : i;
			}
			
			log("INT('A1'): " + INT('A1'));
			log("INT('1A'): " + INT('1A'));
			for (i=1; i<=3; i=i+.1) {
				log('INT(' + i + '): ' + INT(i));
			}
		</span></p>
		<p class="p2"><span>
		</span></p>
	</div>
	<cfinclude template="/Inc/participation.cfm">
</div>
<cfinclude template="/Inc/linkList.cfm">
<cfinclude template="/Inc/foot.cfm">
<script src="parseInt.js"></script>
<cfinclude template="/Inc/End.cfm">
