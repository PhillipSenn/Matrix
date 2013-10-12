<cfparam name="form.UsageNames" default="1-Intro">
<cfset qryGrid = Application.Vote.WhereUsrSuper()>
<cfoutput>
<!DOCTYPE HTML>
<html>
<head>
<meta name="author" content="Phillip Senn">
<link rel="stylesheet" type="text/css" href="ASCII.css">
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<title>ASCII Matrix</title>
<script src="/Library/PhillipSenn/GoogleAnalytics.js"></script>
</head>
<body>
<div id="container">
	<article id="Example">
		<div id="filters">
			<ul class="hfilter">
				<cfloop query="Application.qryUsage">
					<li>
						<input name="UsageNames" type="checkbox" id="UsageID#UsageID#" value="#UsageName#"
						<cfif ListFind(form.UsageNames,UsageName)>checked</cfif>
						>
						<label for="UsageID#UsageID#" class="inline">#UsageDesc#</label>
					</li>
				</cfloop>
				<li>
					<input name="UsageNames" type="checkbox" value="Select All" id="UsageID0">
					<label for="UsageID0" class="inline">Select All</label>
				</li>
			</ul>
		</div>
		<div>
		<table id="matrix" class="border thSort">
			<thead>
				<tr>
					<th>Usage</th>
					<th class="num"><abbr title="#ValueList(Application.qryUsage.UsageDesc)#">spark</abbr></th>
					<th>
						<cfif StructKeyExists(session,"qryUsr")>
							<abbr title="#ValueList(Application.qryUsage.UsageDesc)#">Vote</abbr>
						<cfelse>
							Login to<br>Vote
						</cfif>
					</th>
					<th class="num">
						<div class="floatleft">Decimal</div>
						<div class="floatright ui-state-default ui-corner-all">
							<span class="ui-icon ui-icon-circle-triangle-n"></span>
						</div>
					</th>
					<th>Name</th>
					<th>HTML</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
			<cfloop query="qryGrid">
				<tr data-gridid="#GridID#">
					<td>#UsageName#</td>
					<cfif Val(Introduction) + Val(Beginner) + Val(Intermediate) + Val(Advanced) + Val(International)>
						<td class="spark">
							#Introduction#,#Beginner#,#Intermediate#,#Advanced#,#International#
						</td>
					<cfelse>
						<td>&nbsp;</td>
					</cfif>
					<td>
						<cfif StructKeyExists(session,"qryUsr")>
							<cfloop query="Application.qryUsage">
								<input name="vote#qryGrid.GridID#" type="radio" value="#UsageID#" title="#UsageDesc#">
							</cfloop>
						</cfif>
					</td>
					<td class="num">#GridSort#</td>
					<td>#GridName#</td>
					<td>#GridInfo#</td>
					<td>#GridDesc#</td>
				</tr>
			</cfloop>
			</tbody>	
		</table>
		</div>
		<p>
			<a href="http://www.ascii-code.com/">http://www.ascii-code.com/</a>
		</p>
		<p>
			I chose the ASCII table to limit the scope of a project while putting it into a database.  The jQuery Matrix
			is simply a big fat table in Dreamweaver. Depending upon the success of the ASCII matrix, I'll move it into
			SQL Server with voting rights as well.
		</p>
	</article>
	<footer>
		<cfinclude template="#Application.home.dir#TheList.cfm">
	</footer>
	<noscript>
		JavaScript is disabled.
	</noscript>
</div>
<script src="/Library/js/log.js"></script>
<cfinclude template="/Library/Google/jQueryUI.js.cfm">
<script src="/Library/jQuery/sparkline/sparkline.js"></script>
<script src="/Library/jQuery/thSort.js"></script>
<script src="ASCII.js"></script>
<script src="../Index.js"></script>
</body>
</html>
</cfoutput>
