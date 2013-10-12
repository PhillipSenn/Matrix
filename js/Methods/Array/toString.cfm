<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfinclude template="/Inc/intro.cfm">
<div id="supportingText">
	<div id="explanation">
		<h3><span>toString</span></h3>
		<p class="p1"><span>
			var myArr = ['A','B'];
			$('#explanation .p2').html(myArr.toString());
			log(myArr,myArr.toString());
		</span></p>
		<p class="p2"><span>
		</span></p>
	</div>
	<cfinclude template="/Inc/participation.cfm">
</div>
<cfinclude template="/Inc/linkList.cfm">
<cfinclude template="/Inc/foot.cfm">
<script src="toString.js"></script>
<cfinclude template="/Inc/End.cfm">
