<cfset request.jqm.Page = false>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section id="Setup">
	<header>
		<a href="JavaScript:;" data-rel="back" data-icon="arrow-l">Back</a>
		<h1>localDatabase</h1>
		<select class="onLine" data-role="slider" data-mini="true">
			<option value="0">Off</option>
			<option value="1">On</option>
		</select>	
	</header>
	<nav class="msg"></nav>
	<article>
		<input type="button" id="CleanSlate" value="Clean Slate">
		<div>States: <span id="States"></span></div>
		Todo: some sort of progress meter.
		<p>Here you can see in the console that there is a database called "Matrix" that was created and it
		has a table called "State" in it now.
		</p>
	</article>
</section>
<cfinclude template="/Inc/foot.cfm">
<script src="dl.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>