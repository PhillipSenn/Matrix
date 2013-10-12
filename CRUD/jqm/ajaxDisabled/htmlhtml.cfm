<cfset request.jqm.header = "The html that html.cfm creates">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
I turn as much caching off as I can because caching is the enemy of development.
<p>BTW, if you have the console open in Google Chrome, holding the refresh button down gives you three options for reloading the page.</p>

<pre>
&lt;!doctype html>
&lt;html lang="en">
&lt;<span class="ui-body-b">head</span>>
&lt;meta charset="utf-8">
&lt;meta content="Phillip Senn" name="author">
&lt;meta name="viewport" content="width=device-width, initial-scale=1">
&lt;meta content="no-cache, no-store, must-revalidate" http-equiv="Cache-Control">
&lt;meta content="no-cache"                            http-equiv="Pragma">
&lt;meta content="0"                                   http-equiv="Expires">
&lt;link rel="stylesheet" href="//code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.<span class="ui-body-b">css</span>">
&lt;<span class="ui-body-b">/head</span>>
</pre>
Inside the head, you've got the css.  But there's no need to supply the JavaScript until the page has been loaded.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>