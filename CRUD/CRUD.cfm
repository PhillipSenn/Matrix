<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
During development, there are a million decisions that have to be made.
So I've put together a typical Create, Read, Update, Delete application here.
<ul>
	<li><a href="https://docs.google.com/presentation/d/1hIsopncjyn_g9VjhjJvzFZqMYuav5JE42TeVXbvVXjE/edit?usp=sharing">Google Presentation</a></li>
	<li><a href="../TDD/TDD.cfm">Testing the components</a></li>
	<li><a href="Bootstrap2/Bootstrap2.cfm">Bootstrap  version</a>
		<ul>
			<li>Using ColdFusion 8 syntax</li>
		</ul>
	</li>
	<li><a href="jqm/ajaxDisabled/ajaxDisabled.cfm">jQuery Mobile version with ajax disabled</a>
		<ul>
			<li>Using cfscript syntax</li>
		</ul>
	</li>
	<li><a href="jqm/ajaxEnabled/ajaxEnabled.cfm">jQuery Mobile version with ajax enabled</a></li>
	<li>Web SQL Database
		<ul>
			<li><a href="jqm/LocalDatabase/dl/dl.cfm">Create State Table and Download</a></li>
			<li><a href="jqm/LocalDatabase/Read/Read.cfm">Read the State table from Web SQL</a></li>
			<li>CRUD using Web SQL</li>
			<li><a href="jqm/LocalDatabase/Sync/Sync.cfm">Sync when online</a></li>
		</ul>
	</li>
	<li>jQuery Mobile cache manifest</li>
	<li><a href="chrome://appcache-internals/">chrome://appcache-internals/</a></li>
	<li><a href="chrome://blob-internals/">chrome://blob-internals/</a></li>
	<li><a href="chrome://quota-internals/">chrome://quota-internals/</a></li>
</ul>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
