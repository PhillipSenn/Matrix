<cfoutput>
<nav class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid"> 
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
			</a> 
			<a class="brand" href="/">Home</a>
			<cfif StructKeyExists(session,"qry")>
				<div class="btn-group pull-right"> 
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="##"> 
						<i class="icon-user"></i>
						User #session.qry.UsrID#
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/Matrix/Login/Reset.cfm">Reset</a></li>
						<li class="divider"></li>
						<li><a href="/Matrix/Login/Logout.cfm">Sign Out</a></li>
					</ul>
				</div>
			</cfif>
			<div class="nav-collapse">
				<ul class="nav">
					<li><a href="/Matrix/CRUD/CRUD.cfm">Matrix</a></li>
					<li><a href="/About">About</a></li>
				</ul>
			</div>
		</div>
	</div>
</nav>
</cfoutput>