<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>The class selector</h1>
<p class="alert alert-success">I'm a paragraph of alert-success</p>
<p class="alert alert-success">I'm also a paragraph of alert-success</p>
<p class="alert alert-error">But I'm a paragraph of alert-error!</p>
<p class="ALERT-SUCCESS">I'm a paragraph of ALERT-SUCCESS.  I'm not selected because JavaScript is case sensitive.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="Class.js"></script>
<cfinclude template="/Inc/End.cfm">
