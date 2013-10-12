<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
If you inspect this list using Firebug, you can see that all four lines have a data(x) associated with them.
<p>
But the first two will not be removed when you issue the removeData command.
</p>
<ul>
	<li id="1" data-x="10">This line has data-x="10"</li>
	<li id="2">This line had $('#2').attr('data-x',20) applied to it.</li>
	<li id="3">This line had $('#3').data('x',30) applied to it.</li>
	<li id="4">This line had $.data($('#4')[0],'x',40) applied to it.</li>
</ul>
<input id="remove" type="button" value="$('*').removeData('x')">
<input id="removeattr" type="button" value="$('*').removeAttr('data-x')">
<cfinclude template="/Inc/foot.cfm">
<script src="data.js"></script>
<cfinclude template="/Inc/End.cfm">
