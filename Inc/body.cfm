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
		<a class="navbar-brand" href="/">Home</a>
		<div class="nav-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="/Matrix/Matrix.cfm">Matrix</a></li>
				<cfif StructKeyExists(session,"Usr")>
					<li><a href="#Application.home.dir#Profile/Profile.cfm">#session.Usr.qry.UsrName#</a></li>
				</cfif>
			</ul>
			<cfif StructKeyExists(session,"Usr")>
				<ul class="nav navbar-nav pull-right">
					<li><a href="#Application.home.dir#?logout">Sign Out</a></li>
				</ul>
			</cfif>
		</div>
	</div>
</div>
</cfif>
<cfif request.Bootstrap.Container>
<div class="container">
	<div class="row msg">#request.msg#</div>
</div>
<section class="container" hidden>
	<article class="row">
<cfelse>
<div>
	<div class="msg">#request.msg#</div>
</div>
</cfif>
</cfoutput>
