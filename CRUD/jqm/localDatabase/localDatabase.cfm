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
	<article>
		<input type="button" id="CleanSlate" value="Clean Slate">
		<div>States: <span id="States"></span></div>
	</article>
</section>
<cfinclude template="/Inc/foot.cfm">
<script src="localDatabase.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>