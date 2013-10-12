<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="Chat.css">
<cfinclude template="/Inc/body.cfm">
<div>Status: <span id="EventStatus"></span></div>
<div id="ChatHistory">
	<table class="border">
		<thead>
			<tr>
				<th>Who</th>
				<th>Chat</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>
<form method="post">
	<textarea name="ChatName" cols="80" rows="10"></textarea>
	<p>
		<input type="submit" name="Save" value="Send" disabled>
	</p>
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="Chat.js"></script>
<cfinclude template="/Inc/End.cfm">
