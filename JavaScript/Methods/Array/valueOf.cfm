<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfinclude template="/Inc/intro.cfm">
<div id="supportingText">
	<div id="explanation">
		<h3><span>valueOf</span></h3>
		<p class="p1"><span>
			var myArr = ['A','B'];
			var X = myArr.valueOf();
			$('#explanation .p2').html(X[0] + '&lt;br>' + X[1]);
			log(myArr,myArr.valueOf());
		</span></p>
		<p class="p2"><span>
		</span></p>
	</div>
	<cfinclude template="/Inc/participation.cfm">
</div>
<cfinclude template="/Inc/linkList.cfm">
<cfinclude template="/Inc/foot.cfm">
<script src="valueOf.js"></script>
<cfinclude template="/Inc/End.cfm">
