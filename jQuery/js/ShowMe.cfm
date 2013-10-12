<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>Paragraph One</p>
<p>Paragraph Two</p>
<cfinclude template="/Inc/foot.cfm">
<script>
var x = $('p');
x.each(function(index) {
	$('body').append($(this).html().replace('<','&lt;') + '<br>');
});
</script>
<cfinclude template="/Inc/End.cfm">

