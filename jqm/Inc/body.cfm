</head>

<cfscript>
if (StructKeyExists(url,"js")) {
	request.jqm.js = url.js;
} else {
	param name="request.jqm.js" default="true";
}
param name="request.jqm.hidden" default="false";
if (request.jqm.hidden AND request.jqm.js) {
	Print('<body hidden>');
} else {
	Print('<body>');
}
param name="request.jqm.page" default="true";
if (request.jqm.page) {
	param name="request.jqm.title" default="jQuery Mobile";
	if (StructKeyExists(request,"PageID")) {
		Print('<section data-title="' & request.jqm.title & '" id="' & request.jqm.PageID & '">');
	} else {
		Print('<section data-title="' & request.jqm.title & '">');
	}
	param name="request.jqm.header" default="";
	param name="request.jqm.theme" default="";
	if (request.jqm.header NEQ "") {
		if (StructKeyExists(url,"theme") AND url.theme GE 'A' and url.theme LE 'Z') {
			request.jqm.theme = url.theme;
		}
		if (request.jqm.theme EQ "") {
			Print('<header>');
		} else {
			Print('<header data-theme="' & request.jqm.theme & '">');
		}
		param name="request.jqm.back" default="true";
		if (request.jqm.back) {
			Print('	<a href="JavaScript:;" data-rel="back" data-icon="arrow-l">Back</a>');
		}
		Print('	<h1>#request.jqm.header#</h1>');
		//if (StructKeyExists(Application,"Home") AND StructKeyExists(Application.Home,"dir")) {
		//	Print('	<a href="' & Application.Home.dir & '" data-icon="home">Home</a>');
		//}
		Print('</header>');
	}
	Page = ListLast(cgi.SCRIPT_NAME,'/');
	Page = ListFirst(Page,'.');
	Print('<nav>');
	Print('<ul>');
	Print('<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewCFM.cfm?Page=#Page#">ColdFusion</a></li>');
	Print('<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewHTM.cfm?Page=#Page#&Showjs=0">HTML</a></li>');
	Print('<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewHTM.cfm?Page=#Page#&Showjqm=0">HTML + JS</a></li>');
	Print('<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewHTM.cfm?Page=#Page#">HTML + JS + JQM</a></li>');
	Print('<li><a data-ajax="false" href="##">&nbsp;</a></li>');
	Print('</ul>');
	Print('</nav>');


	param name="request.jqm.content" default="true";
	if (request.jqm.content) { // TODO: This should be called article, not content.
		if (StructKeyExists(request,"ContentID")) {
			Print('<article id="' & request.jqm.ContentID & '">');
		} else {
			Print('<article>');
		}
	}
}
</cfscript>
