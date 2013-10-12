<cfoutput>
<cfinclude template="/Library/Bootstrap3/body.cfm">
<cfif request.Bootstrap.navbar NEQ "none">
<div class="navbar #request.Bootstrap.navbar#">
	<div class="container">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/Matrix">Matrix</a>
		<div class="nav-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="#Application.Home.dir#">Bootstrap3</a></li>
			</ul>
			<ul class="nav navbar-nav pull-right">
				<li><a href="#Application.home.dir#?logout">Sign Out</a></li>
			</ul>
		</div>
	</div>
</div>
</cfif>
<cfinclude template="/Library/Bootstrap3/Container.cfm">
</cfoutput>
